import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'get_started.dart';

class ScreenSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Wait for 5 seconds and then navigate to the GetStartedScreen
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              GetStartedScreen(),
        ),
      );
    });

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage('assets/splash.png'),
            fit: BoxFit.fitWidth,
          ),
          color: Color(0xFF453369)
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.176,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                      offset: Offset(0, -4),
                      blurRadius: 20,
                    ),
                  ],
                  color: Color.fromRGBO(22, 0, 68, 1),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.863,
              left: MediaQuery.of(context).size.width * 0.302,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.397,
                height: MediaQuery.of(context).size.height * 0.096,
                child: SvgPicture.asset(
                  'assets/icons/logo.svg', // Use the asset path to your logo.svg here
                  semanticsLabel: 'Logo', // Add a semantics label if needed
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.0,
              left: MediaQuery.of(context).size.width * 0.128,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.140,
                height: MediaQuery.of(context).size.height * 0.056,
                // Place your SVG assets here or use Image.asset for images
              ),
            ),
          ],
        ),
      ),
    );
  }
}

