import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get.dart';

class ScreenPageView extends StatefulWidget {
  @override
  _ScreenPageViewState createState() => _ScreenPageViewState();
}

class _ScreenPageViewState extends State<ScreenPageView> {
  final RxInt selected = 0.obs;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF170044),
        title: Text(
          'Customer Care',
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 26, color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xFF170044),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) {
                selected.value = index;
              },
              itemCount: pageImageList.length,
              controller: _pageController,
              itemBuilder: (context, index) {
                PageImage pageImage=pageImageList[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Column(
                      children: [
                        Container(
                          margin:EdgeInsets.only(top:Get.height*.12) ,
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/${pageImage.image}.png',
                          ),
                        ),
                        SizedBox(
                            width: 120,
                            child: Divider(color: Colors.white,thickness: 2,)).marginSymmetric(vertical: 20),

                      ],
                    ),
                   Text(
                      pageImage.text,style: TextStyle(color: Colors.white),
                    ).marginSymmetric(horizontal: 30,vertical: Get.height*.08),
                  ],
                );
              },
            ),
          ),
          Obx(() {
            return DotsIndicator(
              dotsCount: pageImageList.length,
              position: selected.value,
              decorator: DotsDecorator(
                color: Colors.white, // Inactive dot color
                activeColor: Colors.blue, // Active dot color
              ),
            );
          }),
        ],
      ),
    );
  }
}
class PageImage{
  String image,text;

  PageImage({
    required this.image,
    required this.text,
  });
}
List<PageImage> pageImageList=[
  PageImage(image: "dil", text: "Reach out to our customer care team for fast and reliable support with any questions or concerns."),
  PageImage(image: "email", text: "Need assistance? Reach out to us at [email protected] We're ready to help you with any issues you have!"),
  PageImage(image: "call", text: "For immediate assistance, give us a call at [phone number]. Our team is here to help you!"),
  PageImage(image: "support", text: "Facing an issue? Our support team is ready to assist you. Reach out for help and guidance."),
  PageImage(image: "service", text: "For any service-related inquiries or assistance, our dedicated support team is available to help. Don't hesitate to reach out!"),
];