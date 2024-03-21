import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class ScreenRanking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF170044),
      appBar: AppBar(
        backgroundColor: Color(0xFF170044),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "What is Ranking?",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 26),
        ),
      ),
      body: Column(
        children: [
          Text(
            "Ranking represents the relative performance or position of each ticker compared to others in terms of a specific metric, such as price or signal strength. The ranking is based on a scale or range of numbers that you can set according to your preferences.",
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 12, color: Colors.white),
          ),
          Text(
            "For example",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.green),
          ).marginOnly(top: 26),
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
                    ),
                  ),
                ],
              ).marginSymmetric(vertical: 8, horizontal: 12);
            },
          ),
          Text(
            "You can assign your own range or use a default range based on industry standards. Adjust the ranking based on your investment strategy and the importance you assign to specific metrics.",
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 12, color: Colors.white),
          ).marginSymmetric(horizontal: 20.sp,vertical: 30.sp),
          Text(
              "Remember, ranking is a helpful tool for quickly assessing the performance and potential of different tickers within your portfolio.",
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 12, color: Colors.white),
          ).marginSymmetric(horizontal: 20.sp,vertical: 30.sp),
          Text(
              "IF YOU NEED FURTHER ASSISTANCE OR HAVE ANY QUESTIONS, FEEL FREE TO REACH OUT TO OUR SUPPORT TEAM VIA THE HELP SECTION.",            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 14, color: Colors.white),
          ).marginSymmetric(horizontal: 20.sp,vertical: 30.sp),
        ],
      ).marginSymmetric(horizontal: 26, vertical: 26),
    );
  }

  List<String> myText = [
    "A higher ranking number might indicate a stronger performance or better signal.",
    "A lower ranking number might indicate a weaker performance or lower signal.",
  ];
}
