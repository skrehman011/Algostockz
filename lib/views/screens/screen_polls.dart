import 'package:algostocks/controller/predication_controller.dart';
import 'package:algostocks/model/model_prediction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../charts/label_collosion.dart';

class ScreenPoll extends StatefulWidget {
  const ScreenPoll({super.key});

  @override
  State<ScreenPoll> createState() => _ScreenPollState();
}

class _ScreenPollState extends State<ScreenPoll> {

  String selectedValue = ' 1';
  List<String> dropdownValues = [' 1', ' 2', ' 3', ' 4', ' 5'];


  @override
  Widget build(BuildContext context) {
    PredictionController predictionController = Get.put(PredictionController());
    predictionController.fetchPredictionData();
    return Scaffold(
      backgroundColor: Color(0xFF170044),
      appBar: AppBar(
        centerTitle: true,
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
        title: Text('Polls', style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              child: LabelAction(),
            ),
            // Center(child: Image.asset('assets/images/poll.png')).marginSymmetric(vertical: 15),
            Container(
              width: 350,
              height: 47,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
              ),
              child: Text(
                "Predictions for June 06, 2023",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black),
              ).marginOnly(left: 50, top: 15),
            ),
            Container(
              // width: 270,
              // height: 25,
              width: Get.width,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF7D41FB),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ticker",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  Text(
                    "Price",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  Text(
                    "Signal",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  Text(
                    "Ranking",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox( // Wrap the ListView.builder with SizedBox to limit its height
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.5, // Set a desired height, adjust as needed
              child: Obx(() {
                return (predictionController.predictionData.isNotEmpty)?ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: predictionController.predictionData.length,
                  itemBuilder: (BuildContext context, int index) {
                    ModelPrediction prediction = predictionController
                        .predictionData[index];
                    return Container(
                      width: 364,
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFF453369),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        textDirection: TextDirection.ltr,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                prediction.ticker, // "Ticker" text
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                prediction.price.toString(), // "Price" text
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                prediction.signal,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: DropdownButton<String>(
                                  value: selectedValue,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedValue = newValue!;
                                      print('Selected Value: $selectedValue');
                                    });
                                  },
                                  items: dropdownValues.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                          Positioned( // Positioned widget to display selected value below "Ticker"
                            left: 0,
                            bottom: 11,
                            child: Text(
                              selectedValue, // Display selected dropdown value
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.green, // Set the color to green
                              ),
                            ),
                          ),
                        ],
                      ),
                    ).marginSymmetric(vertical: 5);
                  },
                ):Center(child: SizedBox(
                    height: 30,
                    child: CircularProgressIndicator()));
              }),


            ),
          ],
        ).marginSymmetric(horizontal: 15, vertical: 10),
      ),

    );
  }
}
