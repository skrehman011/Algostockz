import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class RegistrationController extends GetxController {
  
  TextEditingController phoneNoController=TextEditingController();
  TextEditingController firstNameController=TextEditingController();
  TextEditingController lastNameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();

 void SignUp() async {
  String phone = phoneNoController.text;
  String firstName = firstNameController.text;
  String lastName = lastNameController.text;
  String email=emailController.text;
  String password =passwordController.text;
  String confirmPassword=confirmPasswordController.text;
if (firstName.isEmpty || lastName.isEmpty || phone.isEmpty ||
    email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
  Get.snackbar("Alert", "Please fill all fields");
} else {
  await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email, password: password).then((value) {
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
    firstNameController.clear();
    lastNameController.clear();
    phoneNoController.clear();
    Get.snackbar("Success", "Account created successfully");
  }).catchError((error) {
    Get.snackbar('Error', error.toString());
  });
}
}

 void SignIn() async {
  String email = emailController.text;
  String password = passwordController.text;
  if (email.isEmpty || password.isEmpty) {
    Get.snackbar("Alert", "Please fill all fields");
  }else{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
    ).catchError((error){
      Get.snackbar('Error', error.toString());
    });
  }


  }

}