// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_utils/get_utils.dart';
//
// class ScreenProfile extends StatelessWidget {
//   const ScreenProfile({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           elevation: 0,
//           backgroundColor: Color(0xFF170044),
//           title: Text(
//             "Profile",
//             style: TextStyle(
//               fontWeight: FontWeight.w700,
//               fontSize: 26,
//               color: Colors.white,
//             ),
//           ),
//         ),
//         backgroundColor: Color(0xFF170044),
//         body: Column(
//           children: [
//             Container(
//               child: CircleAvatar(
//                 radius: 40,
//                 backgroundImage: AssetImage("assets/images/dil.png"),
//               ).marginOnly(left: 20, top: 40, right: 0),
//             ).marginSymmetric(horizontal: 15, vertical: 10),
//             Text(
//               " Mani Malik",
//               style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.w700,
//                   color: Colors.white),
//             ).marginOnly(left: 20, top: 10),
//             Text(
//               " AlgoStockz Member",
//               style: TextStyle(
//                   fontSize: 13,
//                   fontWeight: FontWeight.w300,
//                   color: Colors.white),
//             ).marginOnly(left: 30, top: 10),
//             Container(
//               height: 375,
//               width: 326,
//               // height: Get.height,
//               // width: Get.width,
//               decoration: BoxDecoration(
//                 color: Colors.blueGrey.withOpacity(0.5),
//                 // border: Border.all(color: Colors.white, width: 1),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Referral Milestone",
//                     style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.white),
//                   ).marginSymmetric(horizontal: 15,vertical: 15),
//                 ],
//               ),
//             ).marginOnly(left: 18,top: 20)
//           ],
//         ));
//   }
// }
