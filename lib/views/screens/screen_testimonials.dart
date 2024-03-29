import 'package:algostocks/model/model_testimonial.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/testimonial_controller.dart';

class ScreenTestimonial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TestimonialController testimonialController =
        Get.put(TestimonialController());
    return Scaffold(
        backgroundColor: Color(0xFF170044),
        appBar: AppBar(
          backgroundColor: Color(0xFF170044),
          centerTitle: true,
          elevation: 0,
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
            "Testimonials",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 26, color: Colors.white),
          ),
        ),
        body: Obx(() {
          return (testimonialController.modelTestimonial.isEmpty)
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemCount: testimonialController.modelTestimonial.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    ModelTestimonial modelTest =
                        testimonialController.modelTestimonial[index];
                    return Container(
                      padding: EdgeInsets.all(10),
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: Color(0xFFFA299B4),
                        )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            modelTest.message,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                modelTest.name,
                                // 'Suresh',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.green,
                                ),
                              )).marginOnly(top: 5, right: 10),
                        ],
                      ),
                    ).marginOnly(top: 10);
                  });
        }).marginAll(15));
  }
}
