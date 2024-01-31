import 'package:algostocks/user_authentications/new_password.dart';
import 'package:algostocks/user_authentications/signup1.dart';
import 'package:algostocks/user_authentications/verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FPVerificationScreen extends StatefulWidget {
  @override
  _FPVerificationScreenState createState() => _FPVerificationScreenState();
}

class _FPVerificationScreenState extends State<FPVerificationScreen> {
  List<int> verificationDigits = [6, 2, 0, 5]; // List of verification digits
  List<TextEditingController> digitControllers = List.generate(4, (index) => TextEditingController(text: ''),
  );

  @override
  void dispose() {
    for (var controller in digitControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF170044),
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double screenHeight = constraints.maxHeight;
            double screenWidth = constraints.maxWidth;
            double backButtonSize = 30;
            double menuBarSize = 30;
            double spacingFromTop = 73;
            double spacingFromSide = 12;
            double logoSize = 155;
            double logoTopMargin = 30 + spacingFromTop;
            double rectangleTopMargin = logoTopMargin + 70;
            double textBottomMargin = 20;
            double placeholderWidth = 320;

            return Stack(
              children: [
                // Back Button
                Positioned(
                  top: spacingFromTop,
                  left: spacingFromSide,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      'assets/back_button.svg',
                      width: backButtonSize,
                      height: backButtonSize,
                    ),
                  ),
                ),

                // Logo
                Positioned(
                  top: logoTopMargin,
                  left: (screenWidth - logoSize) / 2,
                  child: SvgPicture.asset(
                    'assets/logo.svg',
                    width: logoSize,
                    height: 80.84,
                  ),
                ),

                // Orange Rectangle
                Positioned(
                  top: rectangleTopMargin + 70,
                  left: (screenWidth - placeholderWidth) / 2,
                  child: Container(
                    width: placeholderWidth,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(124, 65, 251, 0.6),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Verification',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // Green Rectangle
                Positioned(
                  top: rectangleTopMargin + 70 + 50,
                  left: (screenWidth - placeholderWidth) / 2,
                  child: Container(
                    width: placeholderWidth,
                    height: 380,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(124, 65, 251, 0.2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      border: Border.all(
                        color: Color(0xFF7D41FB),
                        width: .5,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40),

                        // Verification Code Description
                        Padding(
                          padding: EdgeInsets.only(left: 50, right: 50),
                          child: Text(
                            'We have sent a 4-digit code to your phone to reset your password',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 40),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 50, right: 50),
                            child: Text(
                              'Enter Verification Code',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(verificationDigits.length, (index) {
                            return Column(
                              children: [
                                Container(
                                  width: 46,
                                  height: 46,
                                  margin: EdgeInsets.symmetric(horizontal: 6),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                  ),
                                  child: Center(
                                    child: TextFormField(
                                      controller: digitControllers[index],
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      maxLength: 1,
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      decoration: InputDecoration(
                                        hintText: '${verificationDigits[index]}', // Placeholder number
                                        hintStyle: TextStyle(
                                          color: Colors.black.withOpacity(0.2),
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        counterText: '',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                        ),

                        SizedBox(height: 16),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "If you didn’t receive a code!",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            InkWell(
                              onTap: () {
                                // Handle the resend code action here
                              },
                              child: Text(
                                "Resend",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Color(0xFF7D41FB),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 50, right: 50),
                            child: Text(
                              '29',
                              style: GoogleFonts.josefinSans(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 18),
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NewPasswordScreen()),
                              );
                            },
                            child: Container(
                              width: 220, // Same width as the placeholders
                              height: 52, // Height of the button
                              decoration: BoxDecoration(
                                color: Color(0xFF7D41FB),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text(
                                  'Confirm',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: textBottomMargin+24,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'Need Help?',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),


                Positioned(
                  bottom: textBottomMargin,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Contact our',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(width: 4), // Adding some space between texts
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignupScreen()), // Replace LoginScreen() with your actual LoginScreen widget
                          );
                        },
                        child: Text(
                          'Customer Care Center',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF7D41FB),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            );
          },
        ),
      ),
    );
  }
}