import 'package:algostocks/views/screens/screen_referrol.dart';
import 'package:flutter/material.dart';
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
              String text=myText[index];
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    margin: EdgeInsets.only(top: 4,right: 12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,color: Colors.green,
                    ),
                  ),
                  Expanded(
                      child: Text(
                        text,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.white),

                      )
                  ),
                ],
              ).marginSymmetric(vertical: 8,horizontal: 12);
            },),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: Get.height * 0.35,
                  width: Get.width * 0.45,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      ).marginOnly(top: 10),
                      Row(
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
                      ).marginOnly(top: 20, bottom: 22, left: 35),
                      ElevatedButton(
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
                              Size(200, 50), // Set width and height as needed
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
                    ],
                  ).marginSymmetric(vertical: 20, horizontal: 20),
                ),
                Text(
                  "OR",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: Colors.green),
                ),
                Container(
                  height: Get.height * 0.35,
                  width: Get.width * 0.45,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      ).marginOnly(top: 10),
                      Row(
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
                      ).marginOnly(top: 20, bottom: 22, left: 35),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(ScreenReferral());
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
                              Size(200, 50), // Set width and height as needed
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
                    ],
                  ).marginSymmetric(vertical: 20, horizontal: 20),
                ),
              ],
            ),
          ).marginOnly(top:15 ),
          Text(
            " These transactions are protected and guaranteed according to our terms and conditions",
            style: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 11, color: Colors.white),
          ).marginOnly(top: 25,left: 20),
        ],
      ).marginSymmetric(horizontal: 20,vertical: 20,),
    );
  }
  List<String> myText=[
    "Real-time alerts for instant updates on stock price changes",
    "Customization options to tailor alerts according to individual preferences",
    "Priority customer support for quick assistance and dedicated assistance",
    "Exclusive features and advanced analytics for enhanced trading insights",
    "Cost savings with discounted annual subscription option",
  ];
}
