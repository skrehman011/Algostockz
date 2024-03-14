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
          "How it Works",
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
              CustomTextContainer(
                texts: [
                  ' 1.What is Alostockz',
                  'Algostockz is a leading stock subscription service that provides investors with daily stock picks generated by our advanced algorithm. We aim to help our subscribers capitalize on short-term market movements and optimize their returns'
                ],
                textColor: Color(0xFF0BFFB7),
              ),
              CustomTextContainer(
                texts: [
                  '2.How does the stock picking algorithm work?',
                  'Our algorithm analyses vast amounts of data, with proprietary algorithms, to identify stocks with a high potential for significant movement in the next trading day. It combines technical analysis and quantitative models to generate curated recommendations.'
                ],
                textColor: Color(0xFF0BFFB7),
              ),
              CustomTextContainer(
                texts: [
                  '3.Can I rely solely on the algorithmic stock picks for my investment decisions?',
                  'While our algorithmic stock picks provide valuable insights, its essential to conduct your own research and consider other factors, such as your investment goals, risk tolerance, and market conditions. We recommend using our stock picks as a tool to supplement your investment strategy.'
                ],
                textColor: Color(0xFF0BFFB7),
              ),
              CustomTextContainer(
                texts: [
                  '4.What is the track record of your algorithm?',
                  'While our algorithmic stock picks provide valuable insights, its essential to conduct your own research and consider other factors, such  your investment goals, risk tolerance, and market conditions. We recommend using our stock picks a tool to supplement your investment strategy'
                ],
                textColor: Color(0xFF0BFFB7),
              ),
              CustomTextContainer(
                texts: [
                  '5.What is Alostockz',
                  'Algostockz is a leading stock subscription service that provides investors with daily stock picks generated by our advanced algorithm. We aim to help our subscribers capitalize on short-term market movements and optimize their returns'
                ],
                textColor: Color(0xFF0BFFB7),
              ),
              CustomTextContainer(
                texts: [
                  '6.How does the stock picking algorithm work?',
                  'Our algorithm analyses vast amounts of data, with proprietary algorithms, to identify stocks with a high potential for significant movement in the next trading day. It combines technical analysis and quantitative models to generate curated recommendations.'
                ],
                textColor: Color(0xFF0BFFB7),
              ),
              CustomTextContainer(
                texts: [
                  '7.Can I rely solely on the algorithmic stock picks for my investment decisions?',
                  'While our algorithmic stock picks provide valuable insights, its essential to conduct your own research and consider other factors, such as your investment goals, risk tolerance, and market conditions. We recommend using our stock picks as a tool to supplement your investment strategy.'
                ],
                textColor: Color(0xFF0BFFB7),
              ),
              CustomTextContainer(
                texts: [
                  '8.What is the track record of your algorithm?',
                  'While our algorithmic stock picks provide valuable insights, its essential to conduct your own research and consider other factors, such  your investment goals, risk tolerance, and market conditions. We recommend using our stock picks a tool to supplement your investment strategy'
                ],
                textColor: Color(0xFF0BFFB7),
              ),
            ],
          ).marginAll(15),
        ),
      ),
    );
  }
}
