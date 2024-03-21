import 'dart:developer';

import 'package:algostocks/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LayoutProfile extends StatelessWidget {


  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    log(userController.userAccounts.first.email.toString());
    // CheckApiController controller=Get.put(CheckApiController());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xFF170044),
          title: Text(
            "Profile",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 26,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Color(0xFF170044),
        body: Column(
          children: [
            Container(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/dil.png"),
              ).marginOnly(left: 20, top: 40, right: 0),
            ).marginSymmetric(horizontal: 15, vertical: 10),
            Center(
              child: Obx(() {
                return Text(
                  " ${userController.userAccounts.first!.email.isNotEmpty
                      ? userController.userAccounts.first!.email
                      : "Guest"}",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                );
              }).marginOnly(left: 20, top: 10),
            ),
            Center(
              child: Text(
                " AlgoStockz Member",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
            ),
            Column(
              children: [
                Container(
                  height: Get.height * 0.35,
                  width: Get.width * 0.95,
                  // height: Get.height,
                  // width: Get.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFF453369),
                    // border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Referral Milestone",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ).marginSymmetric(horizontal: 15, vertical: 15),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 6,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 60,
                              child: IntrinsicHeight(
                                child: Row(
                                  children: [
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Colors.red, width: 1)),
                                          child: Container(
                                            margin: EdgeInsets.all(3),
                                            height: 8,
                                            width: 8,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.red),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: Get.height,
                                            width: 1,
                                            color: Colors.red,
                                          ),
                                        )
                                      ],
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Haris Rao",
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(
                                            "haris@email.com | May 26, 2023",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 11,
                                                color: Colors.blueGrey
                                                    .withOpacity(1)),
                                          ),
                                        ],
                                      ).marginSymmetric(horizontal: 10),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ).marginOnly(left: 18, top: 20),
              ],
            ),
            Container(
              height: Get.width * 0.15,
              width: Get.width * 0.80,
              child: ElevatedButton(
                  onPressed: () {
                    userController.fetchUserAccounts().then((_) {
                      // Print the response after fetching user accounts
                      print(userController.userAccounts);
                    }).catchError((error) {
                      // Handle error if any
                      print('Error fetching user accounts: $error');
                    });
                    // controller.fetchTestimonial(
                    //
                    //
                    // );
                    // Get.to(() => ScreenReferral());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF7D41FB)
                  ),
                  child: Text(
                    "Get Referral",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  )),
            ).marginSymmetric(vertical: 15, horizontal: 15,)
          ],
        ).marginOnly(right: 15,)
    );
  }
}
