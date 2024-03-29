import 'package:algostocks/views/screens/screen_referrol.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';

class ScreenPricing extends StatelessWidget {
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
          "pricing",
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Features",
            style: TextStyle(
              color: Color(0xFF0BFFB7),
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ).marginOnly(
            left: 20,
          ),

          ListView.builder(
            shrinkWrap: true,
            itemCount: myText.length,
            itemBuilder: (BuildContext context, int index) {
              String text = myText[index];
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    margin: EdgeInsets.only(top: 4, right: 12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    text,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white),
                  )),
                ],
              ).marginSymmetric(vertical: 8, horizontal: 12);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 206.h,
                width: 155.w,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Monthly",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Text(
                      "Get all our notification. Every day for one month, our monthly plan grants access to all premium features",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 8,
                          color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\$100",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "/mo",
                          style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.w300,
                              color: Colors.green),
                          // Add any desired style for the "two" text here
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your button click logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          // Set background color to purple
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                28), // Set border radius to 28
                          ),
                          minimumSize:
                              Size(104, 32), // Set width and height as needed
                        ),
                        child: Text(
                          "Subscribe",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ).marginSymmetric(horizontal: 12, vertical: 8),
              ),
              Text(
                "OR",
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: Colors.green),
              ).marginSymmetric(horizontal: 4),
              Container(
                height: 206.h,
                width: 155.w,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Monthly",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Text(
                      "Get all our notification. Every day for one month, our monthly plan grants access to all premium features",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 8,
                          color: Colors.white),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "\$1",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 11,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "and ",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: Colors.green),
                            // Add any desired style for the "two" text here
                          ),
                          Text(
                            "and ",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: Colors.green),
                            // Add any desired style for the "two" text here
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your button click logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          // Set background color to purple
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                28), // Set border radius to 28
                          ),
                          minimumSize:
                              Size(104, 32), // Set width and height as needed
                        ),
                        child: Text(
                          "Subscribe",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ).marginSymmetric(horizontal: 12, vertical: 8),
              ),
            ],
          ).marginOnly(top: 45),
          RichText(
            textAlign: TextAlign.center,

              text: TextSpan(children: [
            TextSpan(
              text:
                  "These transactions are protected and guaranteed according to our",style: TextStyle(
                  fontWeight: FontWeight.w300, fontSize: 11, color: Colors.white),
            ),
            TextSpan(
              text: " Terms and Condition",style: TextStyle(
              decoration: TextDecoration.underline,
                  decorationColor: Colors.green,
                  fontWeight: FontWeight.w300, fontSize: 11, color: Colors.green),
            ),
          ])).marginSymmetric(vertical: 30,horizontal: 15),
        ],
      ).marginSymmetric(
        horizontal: 15,
        vertical: 20,
      ),
    );
  }

  List<String> myText = [
    "Real-time alerts for instant updates on stock price changes",
    "Customization options to tailor alerts according to individual preferences",
    "Priority customer support for quick assistance and dedicated assistance",
    "Exclusive features and advanced analytics for enhanced trading insights",
    "Cost savings with discounted annual subscription option",
  ];
}
