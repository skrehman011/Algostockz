import 'package:flutter/material.dart';
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
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
          ).marginOnly(top: 26),
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
        
         ],
      ).marginSymmetric(horizontal: 26, vertical: 26),
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

