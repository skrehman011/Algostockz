import 'package:algostocks/model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


class ControllerRegistration extends GetxController {
  RxBool signUpLoading = false.obs;
  RxBool imageLoading = false.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  RxString imagePath = "".obs;

  Future<String> userRegister() async {
    String response = "";
    String firstName = firstNameController.text;
    String lastName = lastNameController.text;
    String phoneNumber = phoneNumberController.text;
    String email = emailController.text;
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;
    signUpLoading.value = true;

    if (isValidEmail(email) &&
        firstName.isNotEmpty &&
        password.isNotEmpty &&
        lastName.isNotEmpty &&
        password.length >= 8 &&
        isValidPhoneNumber(phoneNumber) &&
        password == confirmPassword) {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((userCredential) async {
           await userCredential.user!.sendEmailVerification();
        print("User Register Successfully");
        print(userCredential);
        var uid = userCredential.user!.uid;
        var user = UserModel(
          id: uid,
          firstName: firstName,
          lastName: lastName,
          notificationToken: "",
          imageUrl: "",
          phone: phoneNumber,
          email: email,
        );
        await FirebaseFirestore.instance.collection("users")
            .doc(uid)
            .set(user.toMap())
            .then((value) async {
          response = "success";
          // await FirebaseAuth.instance.currentUser?.updateDisplayName(firstName);
          signUpLoading.value = false;
        }).catchError((error) {
          response = error.toString();
          signUpLoading.value = false;
        });
      }).catchError((e){
        response=e.toString();
        signUpLoading.value=false;
      });
    } else {
      if (!isValidEmail(email)) {
        signUpLoading.value = false;

        response = "Please enter valid email";
      } else if (password != confirmPassword) {
        signUpLoading.value = false;

        response = "Passwords do not match";
      } else if (password.length < 8) {
        signUpLoading.value = false;

        response = "Password must be at least 8 characters long";
      } else if (phoneNumber.isEmpty || !isValidPhoneNumber(phoneNumber)) {
        response = "Please Enter Valid Phone Number";
      } else {
        response = "All Fields Required";
        signUpLoading.value = false;
      }
    }
    signUpLoading.value = false;

    return response;
  }

  bool isValidEmail(String email) {
    // Regular expression for a simple email validation
    final emailRegExp =
        RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
    return emailRegExp.hasMatch(email);
  }

  bool isValidPhoneNumber(String phoneNumber) {
    // Regular expression for validating a phone number with exactly 12 digits
    final phoneRegExp = RegExp(r'^\+\d{12}$');
    return phoneRegExp.hasMatch(phoneNumber);
  }

  //Select County Code

  //Select gender
  RxString selectGender = "Male".obs;

  //Date picker
  Rx<DateTime> selectedDate = DateTime.now().obs;

  Future<void> pickDate(context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate.value,
        firstDate: DateTime(1900),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) selectedDate.value = picked;
    update();
  }

  // Future<String> uploadImage() async {
  //   String response = "";
  //   imageLoading.value = true;
  //   var url = await FirebaseUtils.uploadImage(
  //           imagePath.value, "Users/${FirebaseAuth.instance.currentUser!.uid}")
  //       .catchError((error) {
  //     response = error.toString();
  //     imageLoading.value = false;
  //   });
  //   await FirebaseAuth.instance.currentUser?.updatePhotoURL(url);
  //
  //   await DbReference()
  //       .userRef
  //       .doc(FirebaseAuth.instance.currentUser!.uid)
  //       .update({"imageUrl": url}).then((value) {
  //     response = "success";
  //     imageLoading.value = false;
  //   }).catchError((e) {
  //     response = e.toString();
  //     imageLoading.value = false;
  //   });
  //   return response;
  // }
}
