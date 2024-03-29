import 'package:algostocks/model/FAQ.dart';
import 'package:algostocks/widget/custom_text_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/faqs_controller.dart';
import 'faq_feedback.dart';

class ScreenFaq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FaqsController controller = Get.put(FaqsController());
    controller.fetchFAQs();
    return Scaffold(
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
          'FAQ',
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xFF170044),
      body: Obx(() {
        return (controller.loading.value)
            ? Center(child: CircularProgressIndicator())
            : (controller.faqResponse.value == "success")
                ? ListView.builder(
                  itemCount: controller.faqs.length,
                  itemBuilder: (BuildContext context, int index) {
                    FAQ faq=controller.faqs[index];
                  return  GestureDetector(
                    onTap: () {
                      Get.to(FaqFeedback());
                    },
                    child: CustomContainerText(
                      texts: [
                        faq.question,
                        faq.answer
                        ],
                      textColor: Color(0xFF0BFFB7),
                    ),
                  );
        },)
                : Center(child: Text(controller.faqResponse.value));
      }),
    );
  }
}
