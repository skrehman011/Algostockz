import 'package:algostocks/views/screens/screen_home_page.dart';
import 'package:algostocks/views/screens/screen_splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return GetMaterialApp(
            title: 'AlgoStockz',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: FirebaseAuth.instance.currentUser==null?ScreenSplash():ScreenHomePage(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
