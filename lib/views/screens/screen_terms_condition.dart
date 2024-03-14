import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTermsCondition extends StatelessWidget {
  const ScreenTermsCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF170044),
        centerTitle: true,
        title: Text(' Terms & Condition ',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w700,color: Colors.white),),
      ),
      backgroundColor: Color(0xFF170044),
      body:  Container(
        padding: EdgeInsets.all(10),
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          // color: Colors.grey,
          // color: Colors.blueGrey,
          // color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white70),
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueGrey.withOpacity(0.5),
          ),
          child: Text(
            "YOU MUST READ AND AGREE. IF YOU DO NOT AGREE, \n "
                "YOU ARE FORBIDDEN TO USE OUR SERVICES"

                "Stocks Trading has large potential rewards,but also \n "
                "large potential risk. You must be aware of the risks and be \n"
                " willing to accept them in order to invest in Stocks .\n"
                "Don't trade with money you can't afford to lose. This is neither a solicitation nor an offer to Buy/Sell Stocks . No representation is being made that any account will or is likely to achieve profits or losses similar to those discussed on this app or on any reports. The past performance of any trading system, methodology, strategy, or results is not necessarily indicative of future results."

                "THIS INFORMATION POSTED ON THE \n"
                "APP OR WEB SITE IS STRICTLY FOR EDUCATIONAL PURPOSES. THE APP DOES NOT MAKE BUY, SELL OR HOLD RECOMMENDATIONS!"

                "It should not be considered legal or financial advice. \n"
                "You should consult with an attorney or other professional to determine what may be best for your individual needs."
                "App provides trading algorithms based \n"
                "on a computerized system. All advice is impersonal and not tailored to any specific individual's unique situation. App, and its principles, are not required to register with the NFA as a CTA, SEC, FINRA or any other government agency. We are publicly ",
            style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),
          ),
        ),
      ).marginOnly(top: 10),
    );
  }
}
