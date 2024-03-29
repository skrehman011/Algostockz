import 'package:algostocks/views/screens/screen_pricvacy_policy.dart';
import 'package:algostocks/views/screens/screen_terms_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'layout_disclaimer.dart';

class LegalPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent.withOpacity(.2), // Set background color to transparent
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        ],
      ),
      actions: [
        // Back button
        Container(
          width: 52.w,
          height: 52.h,
          decoration: BoxDecoration(
            color: Color(0xFFDCC54F),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Image.asset('assets/images/Vector.png'),
            ),
          ),
        ).marginOnly(right: 90),
        SizedBox(height: 10,),
        // Disclaimer button
        Center(
          child: Container(
            width: 153.w,
            height: 50.h,
            decoration: BoxDecoration(
              color: Color(0xFF2FFF5D),
              borderRadius: BorderRadius.circular(50),
            ),
            child: TextButton(
              onPressed: () {
                Get.to(LayoutDisclaimer());
                // Handle disclaimer button press
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
              ),
              child: Text(
                'Disclaimer',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        // Privacy Policy button
        Center(
          child: Container(
            width: 217.w,
            height: 52.h,
            decoration: BoxDecoration(
              color: Color(0xFF1D92FF),
              borderRadius: BorderRadius.circular(50),
            ),
            child: TextButton(
              onPressed: () {
                Get.to(ScreenPrivacyPolicy());
                // Handle privacy policy button press
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
              ),
              child: Text(
                'Privacy Policy',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        // Terms and Conditions button
        Container(
          width: 245.h,
          height: 52.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xFFFF1D1D),
          ),
          child: Center(
            child: TextButton(
              onPressed: () {
                Get.to(ScreenTermsCondition());
                // Handle terms and conditions button press
              },
              child: Text('Terms and Conditions',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
