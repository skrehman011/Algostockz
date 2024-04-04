import 'dart:developer';

import 'package:algostocks/model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerHome extends GetxController{
  RxInt currentIndex = 0.obs;

  Rx<UserModel?> user = Rx<UserModel?>(null);
 var uid=FirebaseAuth.instance.currentUser!.uid;
  void UserStream() {
    FirebaseFirestore.instance.collection("users").doc(uid).snapshots().listen((event) {
      user.value = UserModel.fromMap(event.data() as Map<String, dynamic>);
      log("${user.value}");
    });
  }
  @override
  void onInit() {
    UserStream();
    super.onInit();
  }

}