import 'package:algostocks/controller/controller_registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';
import 'signup2.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}
ControllerRegistration controllerRegistration = Get.put(ControllerRegistration());



class _SignupScreenState extends State<SignupScreen> {

  // TextEditingController phoneController = TextEditingController();
  // TextEditingController firstNameController = TextEditingController();
  // TextEditingController lastNameController = TextEditingController();
  bool isPopupOpen = false;
  double overlayOpacity = 0.0; // Add this variable


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
                Positioned(
                  top: spacingFromTop,
                  right: spacingFromSide,
                  child: InkWell(
                    onTap: () {
                      // Handle the tap on the menu button here
                    },
                    child: SvgPicture.asset(
                      'assets/icons/menu_bar.svg', // Replace with the path to your menu bar SVG
                      width: menuBarSize,
                      height: menuBarSize,
                    ),
                  ),
                ),
                Positioned(
                  top: logoTopMargin,
                  left: (screenWidth - logoSize) / 2, // Center the logo horizontally
                  child: SvgPicture.asset(
                    'assets/icons/logo.svg', // Replace with the path to your logo SVG
                    width: logoSize,
                    height: 80.84,
                  ),
                ),
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
                        'Sign up', // Add the "Sign up" text
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
                Positioned(
                  top: rectangleTopMargin + 70 + 50, // Positioning right after the orange rectangle
                  left: (screenWidth - placeholderWidth) / 2, // Centering the green rectangle horizontally
                  child: Container(
                    width: placeholderWidth,
                    height: 440, // Height of the green rectangle
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
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text(
                            'Enter Phone No', // Add the "Enter Phone" text
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
                                controller: controllerRegistration.phoneNumberController,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                decoration: InputDecoration(
                                  hintText: '+91234567890',
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
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text(
                            'Enter First Name',
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
                                controller: controllerRegistration.firstNameController,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Rao Junaid',
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
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text(
                            'Enter Last Name',
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
                                controller: controllerRegistration.lastNameController,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Rajput',
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
                        SizedBox(height: 40),

                        Center(
                          child: InkWell(
                            onTap: () {
                              String phone=controllerRegistration.phoneNumberController.text;
                              String firstName=controllerRegistration.firstNameController.text;
                              String lastName=controllerRegistration.lastNameController.text;
                             if (controllerRegistration.isValidPhoneNumber(phone)&&firstName.isNotEmpty&&lastName.isNotEmpty) {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => Signup2Screen()),
                               );
                             }
                             else{
ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Enter Valid Details")));
                             }
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

                        // Rest of your UI elements...
                      ],
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
                        'Already a user?',
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
                            MaterialPageRoute(builder: (context) => LoginScreen()), // Replace LoginScreen() with your actual LoginScreen widget
                          );
                        },
                        child: Text(
                          'Login',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF7D41FB),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Semi-transparent overlay when popup is open
                if (isPopupOpen)
                  Positioned.fill(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPopupOpen = false;
                        });
                      },
                      child: Container(
                        color: Colors.black.withOpacity(0.7), // Semi-transparent overlay
                      ),
                    ),
                  ),

                // Popup widget (replacing the menu bar)
                if (isPopupOpen)
                  Positioned(
                    top: spacingFromTop,
                    right: spacingFromSide,
                    child: Container(
                      width: 140,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Color(0xFF170044), // Background color #170044
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          InkWell(
                            onTap: () {
                              // Handle Share option
                            },
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.only(top: 5), // Adjusted padding
                                child: Text(
                                  'Share',
                                  style: GoogleFonts.josefinSans(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.white.withOpacity(0.3), // Line color
                            thickness: 1,
                            indent: 20, // Adjust the indent as needed
                            endIndent: 20, // Adjust the endIndent as needed
                          ),
                          InkWell(
                            onTap: () {
                              // Handle Setting option
                            },
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.only(top: 5), // Adjusted padding
                                child: Text(
                                  'Setting',
                                  style: GoogleFonts.josefinSans(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.white.withOpacity(0.3), // Line color
                            thickness: 1,
                            indent: 20, // Adjust the indent as needed
                            endIndent: 20, // Adjust the endIndent as needed
                          ),
                          InkWell(
                            onTap: () {
                              // Handle Contact Us option
                            },
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.only(top: 5), // Adjusted padding
                                child: Text(
                                  'Contact Us',
                                  style: GoogleFonts.josefinSans(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.white.withOpacity(0.3), // Line color
                            thickness: 1,
                            indent: 20, // Adjust the indent as needed
                            endIndent: 20, // Adjust the endIndent as needed
                          ),
                        ],
                      ),
                    ),
                  )
                else
                  Positioned(
                    top: spacingFromTop,
                    right: spacingFromSide,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isPopupOpen = true;
                        });
                      },
                      child: SvgPicture.asset(
                        'assets/icons/menu_bar.svg',
                        width: menuBarSize,
                        height: menuBarSize,
                      ),
                    ),
                  ),              ],
            );
          },
        ),
      ),
    );
  }
}
class MenuPopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          'Popup Content',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}