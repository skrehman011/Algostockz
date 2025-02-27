import 'package:algostocks/views/screens/fp_verification.dart';
import 'package:algostocks/views/screens/login.dart';
import 'package:algostocks/views/screens/signup1.dart';
import 'package:algostocks/views/screens/verification.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../firebase_options.dart';

class NewPasswordScreen extends StatefulWidget {
  @override
  _NewPasswordScreenState createState() => _NewPasswordScreenState();
}

class CustomCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  CustomCheckbox({required this.value, required this.onChanged});

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: Container(
        width: 18,
        height: 18,
        margin: EdgeInsets.only(left: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          color: widget.value ? Color(0xFF7D41FB) : Colors.white,
        ),
        child: widget.value
            ? Icon(
          Icons.check,
          size: 12,
          color: Colors.white,
        )
            : null,
      ),
    );
  }
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController ConfirmNewPasswordController = TextEditingController();
  bool isRememberChecked = false;


  Future<void> initializeFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  @override
  void initState() {
    super.initState();
    initializeFirebase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevent the keyboard from resizing the layout

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF170044), // Background color #170044
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double screenHeight = constraints.maxHeight;
            double screenWidth = constraints.maxWidth;
            double backButtonSize = 30;
            double menuBarSize = 30;
            double spacingFromTop = 73;
            double spacingFromSide = 12;
            double logoSize = 155; // Size for the logo width
            double logoTopMargin = 30 + spacingFromTop; // Margin from the top including spacingFromTop
            double rectangleTopMargin = logoTopMargin + 70; // Positioning 70 pixels below the logo
            double textBottomMargin = 20; // Distance from bottom
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
                      'assets/icons/back_button.svg', // Replace with the path to your back button SVG
                      width: backButtonSize,
                      height: backButtonSize,
                    ),
                  ),
                ),

                // Logo
                Positioned(
                  top: logoTopMargin,
                  left: (screenWidth - logoSize) / 2, // Center the logo horizontally
                  child: SvgPicture.asset(
                    'assets/icons/logo.svg', // Replace with the path to your logo SVG
                    width: logoSize,
                    height: 80.84,
                  ),
                ),

                // Orange Rectangle
                Positioned(
                  top: rectangleTopMargin + 70,
                  left: (screenWidth - placeholderWidth) / 2, // Centering the orange rectangle horizontally
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
                        'New Password',
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
                  top: rectangleTopMargin + 70 + 50, // Positioning right after the orange rectangle
                  left: (screenWidth - placeholderWidth) / 2, // Centering the green rectangle horizontally
                  child: Container(
                    width: placeholderWidth,
                    height: 380, // Height of the green rectangle
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
                        width: .5, // Stroke width
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40),

                        // Login ID Input Placeholder
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text(
                            'Enetr New Password',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Center(
                          child: Container(
                            width: 220,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                controller: newPasswordController,
                                obscureText: true,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                decoration: InputDecoration(
                                  hintText: '8 characters a least',
                                  hintStyle: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 26),

                        // Password Input Placeholder
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text(
                            'Confirm Password', // Add the "Enter Email" text
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 5),
                        Center(
                          child: Container(
                            width: 220,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                controller: ConfirmNewPasswordController,
                                obscureText: true,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Enter password again',
                                  hintStyle: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 24),
                        Row(
                          children: [
                            CustomCheckbox(
                              value: isRememberChecked,
                              onChanged: (newValue) {
                                setState(() {
                                  isRememberChecked = newValue;
                                });
                              },
                            ),
                            SizedBox(width: 10), // Distance between checkbox and text
                            Text(
                              'Remember me',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),


                        SizedBox(height: 40),
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginScreen()),
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
                                  'Submit',
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
