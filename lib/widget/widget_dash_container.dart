import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WidgetDashContainer extends StatelessWidget {
  List<String>? texts;
  Color? color;

  WidgetDashContainer({
    this.texts,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color ?? Color(0xFF7D41FB),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: texts!.map((text) {
          return Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 16,
              color: Colors.white,
            ),
          );
        }).toList(),
      ),
    ).marginSymmetric(vertical: 5);
  }
}
