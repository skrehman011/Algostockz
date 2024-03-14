import 'dart:ui';

import 'package:algostocks/views/screens/screen_dashboard.dart';
import 'package:algostocks/views/screens/screen_disclaimer.dart';
import 'package:algostocks/views/screens/screen_faq.dart';
import 'package:algostocks/views/screens/screen_performance.dart';
import 'package:algostocks/views/screens/login.dart';
import 'package:algostocks/views/screens/screen_polls.dart';
import 'package:algostocks/views/screens/screen_pricing.dart';
import 'package:algostocks/views/screens/screen_profile.dart';
import 'package:algostocks/views/screens/screen_setting.dart';
import 'package:algostocks/views/screens/screen_testimonials.dart';
import 'package:algostocks/views/screens/screen_tips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';


class LayoutHome extends StatelessWidget {
  const LayoutHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        color: Color(0xFF170044),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            Center(
              child: SvgPicture.asset(
                'assets/icons/logo.svg',
                // width: 98,
                height: 100,
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
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildItemWithIconAndText("performance", 'DashBoard', () {
                    Get.to(ScreenDashboard());
                  },context),
                  SizedBox(width: 20),
                  _buildItemWithIconAndText(
                      "Dashboard", 'Performance', () {
                    Get.to(ScreenPerformance());
                  },context),
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
                      "Pricing", 'Pricing', () {
                    Get.to(ScreenPricing());
                  },context),
                  SizedBox(width: 20),
                  _buildItemWithIconAndText("ref", 'Referrals', () {
                    Get.to( ScreenTestimonials());
                  },context),
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
                      "FAQs", 'FAQs', () {
                    Get.to(ScreenFaq());
                  },context),
                  SizedBox(width: 20),
                  _buildItemWithIconAndText(
                      "Feedback", 'Feedback', () {
                    Get.to( ScreenTips());
                  },context),
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
                  },context),
                  SizedBox(width: 20),
                  _buildItemWithIconAndText(
                      "Polls", 'Polls', () {
                    Get.to(ScreenPoll());
                  },context),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }

  Widget _buildItemWithIconAndText(
      String icon,  String text, VoidCallback ontap,context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: (MediaQuery.of(context).size.width - 60) / 2,
          height: 130,
          color: Colors.white.withOpacity(0.2),
          child: Stack(
            children: [
              Container(
                width: (MediaQuery.of(context).size.width - 60) / 2,
                height: 130,
              ),
              Positioned.fill(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     SvgPicture.asset("assets/icons/$icon.svg"),
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
