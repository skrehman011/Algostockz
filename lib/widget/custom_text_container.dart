import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomTextContainer extends StatelessWidget {

  List<String> texts;
  Color? textColor;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.5),
        // color: color ?? Color(0xFF7D41FB),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            texts[0],
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: textColor ?? Colors.white),
          ),
          Text(
            texts[1],
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color:  Colors.white),
          ).marginOnly(top: 10),

        ],
      ).paddingAll(5),
    ).marginSymmetric(vertical: 5);
  }
  CustomTextContainer({
    required this.texts,
    this.textColor,
    this.color,
  });
}
