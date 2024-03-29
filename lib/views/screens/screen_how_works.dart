import 'package:algostocks/widget/custom_works_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widget/custom_text_container.dart';
import 'faq_feedback.dart';

class ScreenHowWorks extends StatelessWidget {
  const ScreenHowWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF170044),
        title: Text(
          "How it works?",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 26,
          ),
        ),
      ),
      backgroundColor: Color(0xFF170044),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            // Get.to( FaqFeedback());
          },
          child: Column(
            children: [
              CustomWorksText(
                texts: [
                  ' 1. Select Date',
                "Begin by visiting the Stock Selection screen and choose a specific date you want to explore for stock data. Simply tap on the date picker and select your desired date from the calendar"                ],
                textColor: Color(0xFF0BFFB7),
              ),
              CustomWorksText(
                texts: [
                  '2. Choose Ticker Symbols',
                  "Enter the ticker symbols of the stocks you wish to track. You can enter one or multiple symbols, separated by commas. Not sure about the ticker symbols? No worries! Our app allows you to search for stocks by their company names, and we'll provide suggestions for the corresponding symbols"                ],
                textColor: Color(0xFF0BFFB7),
              ),
              CustomWorksText(
                texts: [
                 "3. Retrieve Stock Data",
                  "After selecting the date and entering the ticker symbols, tap the Get Data button to retrieve the stock data for the specified date and stocks. AlgoStockz will fetch the latest information, including the stock's name, price, signal, and target"
                ],
                textColor: Color(0xFF0BFFB7),
              ),
              CustomWorksText(
                texts: [
                  '4. View the Stock Data',
                  "The Stock Data screen will present the retrieved information in an organized table format. You can easily navigate through the data by scrolling horizontally or vertically. To sort the data based on a specific column, simply tap on the column header. Additionally, leverage the search and filter options to find specific stocks or narrow down your results effortlessly"                ],
                textColor: Color(0xFF0BFFB7),
              ),
              CustomWorksText(
                texts: [
                  '5. Customize Your Alerts',
                  "Stay ahead of the game by setting up personalized stock alerts. Head over to the Settings screen within AlsoStockz, where you can configure your preferred notification settings, including price thresholds and signal types. Receive timely alerts directly on your device to make informed investment decisions"                ],
                textColor: Color(0xFF0BFFB7),
              ),
              CustomWorksText(
                texts: [
                  '6. Explore Additional Features',
                "AlgoStockz offers a range of additional features to enhance your stock tracking experience. Dive deeper into stock details by tapping on a specific stock to access comprehensive information, including charts, historical data, and news updates. Stay updated with market trends and analysis to make informed decisions."                ],
                textColor: Color(0xFF0BFFB7),
              ),
              // CustomTextContainer(
              //   texts: [
              //     '7.Can I rely solely on the algorithmic stock picks for my investment decisions?',
              //     'While our algorithmic stock picks provide valuable insights, its essential to conduct your own research and consider other factors, such as your investment goals, risk tolerance, and market conditions. We recommend using our stock picks as a tool to supplement your investment strategy.'
              //   ],
              //   textColor: Color(0xFF0BFFB7),
              // ),
              // CustomTextContainer(
              //   texts: [
              //     '8.What is the track record of your algorithm?',
              //     'While our algorithmic stock picks provide valuable insights, its essential to conduct your own research and consider other factors, such  your investment goals, risk tolerance, and market conditions. We recommend using our stock picks a tool to supplement your investment strategy'
              //   ],
              //   textColor: Color(0xFF0BFFB7),
              // ),
            ],
          ).marginAll(15),
        ),
      ),
    );
  }
}
