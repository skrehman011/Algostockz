// import 'package:algostocks/views/screens/screen_dashboard.dart';
// import 'package:algostocks/views/screens/screen_disclaimer.dart';
// import 'package:algostocks/views/screens/screen_faq.dart';
// import 'package:algostocks/views/screens/screen_performance.dart';
// import 'package:algostocks/views/screens/login.dart';
// import 'package:algostocks/views/screens/screen_polls.dart';
// import 'package:algostocks/views/screens/screen_pricing.dart';
// import 'package:algostocks/views/screens/screen_profile.dart';
// import 'package:algostocks/views/screens/screen_setting.dart';
// import 'package:algostocks/views/screens/screen_testimonials.dart';
// import 'package:algostocks/views/screens/screen_tips.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import 'get_started.dart';
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int _currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           color: Color(0xFF170044),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 70),
//               Center(
//                 child: SvgPicture.asset(
//                   'assets/icons/logo.svg',
//                   // width: 98,
//                   height: 100,
//                 ),
//               ),
//               SizedBox(height: 40),
//               Padding(
//                 padding: EdgeInsets.only(left: 20),
//                 child: Text(
//                   'Welcome Junaid!',
//                   style: GoogleFonts.josefinSans(
//                     textStyle: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 30),
//               Padding(
//                 padding: EdgeInsets.only(left: 20, right: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     _buildItemWithIconAndText(Icons.dashboard, 'DashBoard', () {
//                       Get.to(ScreenDashboard());
//                     }),
//                     SizedBox(width: 20),
//                     _buildItemWithIconAndText(
//                         Icons.signal_cellular_alt, 'Performance', () {
//                       Get.to(ScreenPerformance());
//                     }),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 20, right: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     _buildItemWithIconAndText(
//                         Icons.production_quantity_limits_sharp, 'Pricing', () {
//                       Get.to(ScreenPricing());
//                     }),
//                     SizedBox(width: 20),
//                     _buildItemWithIconAndText(Icons.man, 'Referrals', () {
//                       Get.to( ScreenTestimonials());
//                     }),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 20, right: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     _buildItemWithIconAndText(
//                         Icons.factory, 'FAQs', () {
//                           Get.to(ScreenFaq());
//                     }),
//                     SizedBox(width: 20),
//                     _buildItemWithIconAndText(
//                         Icons.feedback, 'Feedback', () {
//                           Get.to( ScreenTips());
//                     }),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 20, right: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     _buildItemWithIconAndText(Icons.dashboard, 'Setting', () {
//                       Get.to(ScreenSetting());
//                     }),
//                     SizedBox(width: 20),
//                     _buildItemWithIconAndText(
//                         Icons.poll_outlined, 'Polls', () {
//                           Get.to(ScreenPoll());
//                     }),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildItemWithIconAndText(
//       IconData iconData,  String text, VoidCallback ontap) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(10),
//       child: GestureDetector(
//         onTap: ontap,
//         child: Container(
//           width: (MediaQuery.of(context).size.width - 60) / 2,
//           height: 130,
//           color: Colors.white.withOpacity(0.2),
//           child: Stack(
//             children: [
//               Container(
//                 width: (MediaQuery.of(context).size.width - 60) / 2,
//                 height: 130,
//               ),
//               Positioned.fill(
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                        Icon(iconData,color: Colors.white,),
//                       SizedBox(height: 8),
//                       Text(
//                         text,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
// }
//
//
