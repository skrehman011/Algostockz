import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenReferral extends StatelessWidget {
  const ScreenReferral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF170044),
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
          "Referrals",
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.w700,color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Referral Program",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.green,
            ),
          ),
          Text(
            "At Algostockz, we value your loyalty and want to reward you for spreading the word about our stock subscription service. ",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Colors.white,
            ),
          ).marginOnly(top: 20),
          Align(
            alignment: Alignment.center,
            child: Text(
              "How it works",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.green,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Refer a Friend",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ).marginSymmetric(horizontal: 20),
                Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(39),
                  ),
                  child: Icon(
                    Icons.person_add_alt,
                    size: 30,
                    color: Colors.blueGrey.withOpacity(0.5),
                  ),
                ),
                Text(
                  "Invite your friends by sharing your referral code",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 9,
                      color: Colors.white38),
                ).marginSymmetric(horizontal: 20),
              ],
            ).marginOnly(
              top: 20,
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.arrow_downward,
                size: 20,
                color: Colors.white38,
              )),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Refer a Friend",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ).marginSymmetric(horizontal: 20),
                Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(39),
                  ),
                  child: Icon(
                    Icons.person_add_alt,
                    size: 30,
                    color: Colors.blueGrey.withOpacity(0.5),
                  ),
                ),
                Text(
                  "Invite your friends by sharing your referral code",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 9,
                      color: Colors.white38),
                ).marginSymmetric(horizontal: 20),
              ],
            ).marginOnly(
              top: 0,
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.arrow_downward,
                size: 20,
                color: Colors.white38,
              )),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Refer a Friend",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ).marginSymmetric(horizontal: 20),
                Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(39),
                  ),
                  child: Icon(
                    Icons.person_add_alt,
                    size: 30,
                    color: Colors.blueGrey.withOpacity(0.5),
                  ),
                ),
                Text(
                  "Invite your friends by sharing your referral code",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 9,
                      color: Colors.white38),
                ).marginSymmetric(horizontal: 20),
              ],
            ).marginOnly(
              top: 0,
            ),
          ),
          Container(
            height:56,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.send,color: Color(0xFF1B1C1E),),
                hintText: "example@email.com",
                hintStyle : TextStyle(color: Color(0xFF1B1C1E))
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ).marginOnly(top: 40),
          Container(
            height: 56,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.copy,color: Color(0xFF1B1C1E),),
                hintText: "algostockz.com/f8c8511b861b",
                hintStyle : TextStyle(color: Color(0xFF1B1C1E))
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ).marginOnly(top: 20),
          Text("Note: The referrals program terms and conditions apply. Discount are applied to the next subscription payment and cannot be combined with other promotions or discounts. Algostockz reservers the right to terminate the referral program at any time ",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 9,
              color: Color(0xFFFFFFFF).withOpacity(0.6),
            ),
          ).marginOnly(top: 30)

        ],
      ).marginSymmetric(horizontal: 25, vertical: 25),
    );
  }
}
