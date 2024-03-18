import 'package:algostocks/views/screens/screen_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'views/screens/get_started.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder : (_, child) {
     return GetMaterialApp(
    title: 'AlgoStockz',
    theme: ThemeData(
    primarySwatch: Colors.blue,
    ),
    home: ScreenSplash(),
    debugShowCheckedModeBanner: false,
    );
    });
  }
}
