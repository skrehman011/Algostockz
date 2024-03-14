import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomPollWidget extends StatefulWidget {
  List<String>? texts;
  Color? color;

  CustomPollWidget({
    this.texts,
    this.color,
  });

  @override
  _CustomPollWidgetState createState() => _CustomPollWidgetState();
}

class _CustomPollWidgetState extends State<CustomPollWidget> {
  String selectedDropdownValue = 'Option 1';
  List<String> dropdownValues = ['Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 5', 'Option 6', 'Option 7'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: widget.color ?? Color(0xFF7D41FB),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (String text in widget.texts!)
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          DropdownButton<String>(
            value: selectedDropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                selectedDropdownValue = newValue!;
              });
            },
            items: dropdownValues.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            style: TextStyle(
              color: Colors.white,
            ),
            dropdownColor: widget.color,
          ),
        ],
      ),
    ).marginSymmetric(vertical: 5);
  }
}
