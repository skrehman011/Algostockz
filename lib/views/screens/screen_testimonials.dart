import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTestimonials extends StatelessWidget {
  const ScreenTestimonials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(10),
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "I've been using this stocks alert app for a while now, and it has completely changed the way I manage my investments. The real-time alerts keep me updated on market movements, and the app's intuitive interface makes it easy to navigate and track my favorite stocks. Highly recommended!",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Suresh',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.green,
                          ),
                        )).marginOnly(top: 5, right: 10),
                  ],
                ),
              ).marginOnly(top: 10);
            }).marginAll(15));
  }
}
