import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ControllerLogin extends GetxController{

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool loginLoading = false.obs;
  RxBool forgotLoading = false.obs;

  Future<String> userLogin() async {
    String response = "";
    String email = emailController.text;
    String password = passwordController.text;
    if (isValidEmail(email) && password.isNotEmpty) {
      loginLoading.value=true;
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        loginLoading.value=false;
        response = "success";
      }).catchError((error) {
        loginLoading.value=false;

        response = "Email or password is incorrect or credential has been expired";
      });
    } else {
      if (!isValidEmail(email)) {
        response = "Please add valid email";

      }
      else{
        response = "Email or password is incorrect";
      }
    }
    return response;
  }
  bool isValidEmail(String email) {
    // Regular expression for a simple email validation
    final emailRegExp =
    RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
    return emailRegExp.hasMatch(email);
  }
  Future<String> userForgot() async {
    String response = "";
    String email = emailController.text;
    if (email.isNotEmpty) {
      forgotLoading.value=true;
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: email)
          .then((value) {
        forgotLoading.value=false;

        response = "success";
      }).catchError((error) {
        forgotLoading.value=false;

        response = error.toString();
      });
    } else {
      response = "Email is required";
    }
    return response;
  }
}