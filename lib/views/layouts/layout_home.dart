import 'dart:ffi';
import 'dart:ui';

import 'package:algostocks/controller/user_controller.dart';
import 'package:algostocks/views/screens/screen_dashboard.dart';
import 'package:algostocks/views/screens/screen_disclaimer.dart';
import 'package:algostocks/views/screens/screen_faq.dart';
import 'package:algostocks/views/screens/screen_how_works.dart';
import 'package:algostocks/views/screens/screen_performance.dart';
import 'package:algostocks/views/screens/login.dart';
import 'package:algostocks/views/screens/screen_polls.dart';
import 'package:algostocks/views/screens/screen_pricing.dart';
import 'package:algostocks/views/screens/screen_profile.dart';
import 'package:algostocks/views/screens/screen_setting.dart';
import 'package:algostocks/views/screens/screen_testimonials.dart';
import 'package:algostocks/views/screens/screen_tips.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/faq_feedback.dart';
import '../screens/screen_pricvacy_policy.dart';
import '../screens/screen_referrol.dart';
import '../screens/screen_terms_condition.dart';
import 'layout_disclaimer.dart';
import 'layout_legal.dart';


class LayoutHome extends StatelessWidget {
  UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF170044),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Center(
            child: SvgPicture.asset(
              'assets/icons/logo.svg',
              // width: 98,
              height: 80,
            ),
          ),
          SizedBox(height: 40),
          Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Welcome Junaid!',
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
          ),
          SizedBox(height: 30),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildItemWithIconAndText("Dashboard", 'DashBoard', () {
                          Get.to(ScreenDashboard());
                        }, context),
                        SizedBox(width: 20),
                        _buildItemWithIconAndText(
                            "Performance", 'Performance', () {
                          Get.to(ScreenPerformance());
                        }, context),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildItemWithIconAndText("Pricing", 'Pricing', () {
                          Get.to(ScreenPricing());
                        }, context),
                        SizedBox(width: 20),
                        _buildItemWithIconAndText("Referrals", 'Referrals', () {
                          Get.to(ScreenReferral());
                        }, context),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildItemWithIconAndText("FAQs", 'FAQs', () {
                          Get.to(ScreenFaq());
                        }, context),
                        SizedBox(width: 20),
                        _buildItemWithIconAndText("Feedback", 'Feedback', () {
                          Get.to(FaqFeedback());
                        }, context),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildItemWithIconAndText("Settings", 'Setting', () {
                          Get.to(ScreenSetting());
                        }, context),
                        SizedBox(width: 20),
                        _buildItemWithIconAndText("Polls", 'Polls', () {
                          Get.to(ScreenPoll());
                        }, context),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildItemWithIconAndText(
                            "Testimonial", 'Testimonials', () {
                          Get.to(ScreenTestimonial());
                        }, context),
                        SizedBox(width: 20),
                        _buildItemWithIconAndText("Tips", 'Tips', () {
                          Get.to(ScreenTips());
                        }, context),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildItemWithIconAndText("works", 'How it works', () {
                          Get.to(ScreenHowWorks());
                        }, context),
                        SizedBox(width: 20),
                        _buildItemWithIconAndText("legal", 'Legal', () {
                          showDialog(
                            context: context,
                            barrierColor: Colors.transparent,
                            builder: (BuildContext context) {
                              return PopUp(); // Show the legal popup
                            },
                          );
                        }, context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemWithIconAndText(String icon, String text, VoidCallback ontap,
  context) {
  return ClipRRect(
  borderRadius: BorderRadius.circular(10),
  child: GestureDetector(
  onTap: ontap,
  child: Container(
  width: (MediaQuery
      .of(context)
      .size
      .width - 60) / 2,
  height: 130,
  color: Colors.white.withOpacity(0.2),
  child: Stack(
  children: [
  Container(
  width: (MediaQuery
      .of(context)
      .size
      .width - 60) / 2,
  height: 130,
  ),
  Positioned.fill(
  child: Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Image.asset("assets/images/$icon.png",height: 40,width: 40,),
  // SvgPicture.asset("assets/icons/$icon.svg"),
  SizedBox(height: 8),
  Text(
  text,
  style: TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  ),
  ),
  ],
  ),
  ),
  ),
  ],
  ),
  ),
  ),
  );
  }
}




class PopUp extends StatefulWidget {
  @override
  PopUpState createState() => PopUpState();
}

class PopUpState extends State<PopUp> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    slideAnimation = Tween<Offset>(
      begin: Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.elasticOut, // Use an elastic curve for bounce effect
      ),
    );

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: AlertDialog(
        contentPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20.h),
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
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Container(
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
            SizedBox(height: 10.h),
            Container(
              width: 217.w,
              height: 50.h,
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
            SizedBox(height: 10.h),
            Container(
              width: 245.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFFF1D1D),
              ),
              child: TextButton(
                onPressed: () {
                  Get.to(ScreenTermsCondition());
                  // Handle terms and conditions button press
                },
                child: Text(
                  'Terms and Conditions',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}


