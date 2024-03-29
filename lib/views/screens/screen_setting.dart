import 'package:algostocks/views/layouts/layout_disclaimer.dart';
import 'package:algostocks/views/screens/screen_disclaimer.dart';
import 'package:algostocks/views/screens/screen_faq.dart';
import 'package:algostocks/views/screens/screen_page_view.dart';
import 'package:algostocks/views/screens/screen_pricvacy_policy.dart';
import 'package:algostocks/views/screens/screen_ranking.dart';
import 'package:algostocks/views/screens/screen_referrol.dart';
import 'package:algostocks/views/screens/screen_terms_condition.dart';
import 'package:algostocks/views/screens/screen_testimonials.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ScreenSetting extends StatelessWidget {
  const ScreenSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF170044),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF170044),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: Text(
          'Settings',
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.to(ScreenRanking());
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Subscriptions',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Color(0xFFFFF2F2)),
              ),
            ),
          ),
          Divider(
            color: Colors.white12,
            thickness: 1,
          ).marginOnly(top: 15),
          GestureDetector(
            onTap: () {
              Get.to(ScreenFaq());
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'FAQs',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Color(0xFFFFF2F2)),
              ).marginOnly(top: 20),
            ),
          ),
          Divider(
            color: Colors.white12,
            thickness: 1,
          ).marginOnly(top: 15),
          GestureDetector(
            onTap: () {
              Get.to(ScreenReferral());
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Invite a friend',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Color(0xFFFFF2F2)),
              ).marginOnly(top: 20),
            ),
          ),
          Divider(
            color: Colors.white12,
            thickness: 1,
          ).marginOnly(top: 15),
          GestureDetector(
            onTap: () {
              Get.to(LayoutDisclaimer());
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Disclaimer',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Color(0xFFFFF2F2)),
              ).marginOnly(top: 20),
            ),
          ),
          Divider(
            color: Colors.white12,
            thickness: 1,
          ).marginOnly(top: 15),
          GestureDetector(
            onTap: () {
              Get.to(ScreenPrivacyPolicy());
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Privacy Policy',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Color(0xFFFFF2F2)),
              ).marginOnly(top: 20),
            ),
          ),
          Divider(
            color: Colors.white12,
            thickness: 1,
          ).marginOnly(top: 15),
          GestureDetector(
            onTap: () {
              Get.to(ScreenTermsCondition());
            },
            child: GestureDetector(
              onTap: () {
                Get.to(ScreenTermsCondition());
              },
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Terms and Conditions',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                      color: Color(0xFFFFF2F2)),
                ).marginOnly(top: 20),
              ),
            ),
          ),
          Divider(
            color: Colors.white12,
            thickness: 1,
          ).marginOnly(top: 15),
          GestureDetector(
            onTap: () {
              Get.to(ScreenPageView());
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Customer Care Center',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Color(0xFFFFF2F2)),
              ).marginOnly(top: 20),
            ),
          ),
          Divider(
            color: Colors.white12,
            thickness: 1,
          ).marginOnly(top: 15),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                _showLogoutDialog(context);
              },
              child: Text(
                'Logout',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Colors.red),
              ).marginOnly(top: 20),
            ),
          ),
          Divider(
            color: Colors.white12,
            thickness: 1,
          ).marginOnly(top: 15),
        ],
      ).marginOnly(top: 20),
    );
  }
}

void _showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Align(
            alignment: Alignment.center,
            child: Text(
              'Logout',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 26,
                  color: Colors.black),
            )),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Do you really sure want to logout because after ',
              style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF019368)),
            ).marginOnly(left: 17),
            Center(
              child: Text(
                '  logging out from account ',
                style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF019368)),
              ),
            ),
            SizedBox(height: 20),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: Container(
                    height: 54.h,
                    width: 116.w,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Center(
                      child: Text(
                        'Cancel',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                // SizedBox(width: 16), // Add spacing between buttons if needed
                GestureDetector(
                  onTap: () {
                    // Perform logout logic here
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: Container(
                    height: 54.h,
                    width: 116.w,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Text(
                        'Logout',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )

          ],
        ),
      );
    },
  );
}
