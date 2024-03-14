import 'package:algostocks/views/screens/screen_home_page.dart';
import 'package:algostocks/views/screens/signup1.dart';
import 'package:algostocks/views/screens/verification.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../firebase_options.dart';
import 'home_screen.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
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
class BlueColorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 160, // Cover the entire screen except top 160 pixels
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF170044), // Background color #170044
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20), // Distance from the top of the blue color bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 44),
                child: Text(
                  'Setting',
                  style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 44),
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.close_rounded,
                    size: 18,
                    color: Colors.white.withOpacity(1),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          InkWell(
            onTap: () {
              // Handle Profile click
            },
            child: Center (
              child: Text(
                'Profile',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: .5, // Thickness of the line
            color: Colors.white.withOpacity(.2),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              // Handle Customer Care Center click
            },
            child: Center (
              child: Text(
                'Customer Care Center',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: .5, // Thickness of the line
            color: Colors.white.withOpacity(.2),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
            },
            child: Center(
              child: Text(
                'Logout',
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                    color: Color(0xFFF83F60),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
class LogoutPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 220,
        height: 190,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Logout Confirmation',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Are you sure you want to log out?',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement logout action here
                    // You can call your logout function and navigate to the login screen
                    Navigator.pop(context); // Close the pop-up
                  },
                  child: Text('Yes'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the pop-up
                  },
                  child: Text('No'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class ShortBlueColorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> rectangleColors = [
      Colors.white,
      Color(0xFF16DC1B),
      Color(0xFF16DC8B),
      Color(0xFFFEFB00),
      Color(0xFF568FE5),
    ];

    List<String> rectangleTexts = [
      'AirDrop',
      'WhatsApp',
      'Message',
      'Snapchat',
      'Mail',
    ];

    List<String> rectangleImages = [
      'assets/images/airdrop.png',
      'assets/images/whatsapp.png',
      'assets/images/message.png',
      'assets/images/snapchat.png',
      'assets/images/mail.png',
    ];

    List<void Function()> rectangleCallbacks = [
          () {
        // Add your AirDrop operation here
        print('AirDrop tapped');
      },
          () {
        // Add your WhatsApp operation here
        print('WhatsApp tapped');
      },
          () {
        // Add your Message operation here
        print('Message tapped');
      },
          () {
        // Add your Snapchat operation here
        print('Snapchat tapped');
      },
          () {
        // Add your Mail operation here
        print('Mail tapped');
      },
    ];

    return Container(
      height: 100, // Set the desired height for the shorter bar
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF170044), // Background color #170044
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 40),
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/apple.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  width: 60,
                  alignment: Alignment.center,
                  child: Text(
                    'iCloud',
                    style: GoogleFonts.josefinSans(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 28),
          Center(
            child: Container(
              width: 320,
              height: 1,
              color: Colors.white.withOpacity(.2),
            ),
          ),
          SizedBox(height: 30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(5, (index) {
                return GestureDetector(
                  onTap: rectangleCallbacks[index],
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: rectangleColors[index],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Image.asset(
                              rectangleImages[index],
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          rectangleTexts[index],
                          style: GoogleFonts.josefinSans(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: 40),
          GestureDetector(
            onTap: () {
              // Add your Copy Link operation here
              print('Copy Link tapped');
            },
            child: Center(
              child: Container(
                width: 320,
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'Copy Link',
                      style: GoogleFonts.josefinSans(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Image.asset(
                        'assets/images/copy_link.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              // Add your Copy Link operation here
              print('Copy iCloud Link tapped');
            },
            child: Center(
              child: Container(
                width: 320,
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'Copy iCloud Link',
                      style: GoogleFonts.josefinSans(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Image.asset(
                        'assets/images/copy_icloud_link.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
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
class _LoginScreenState extends State<LoginScreen> {
  TextEditingController loginIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPopupOpen = false;
  double overlayOpacity = 0.0;
  bool isRememberChecked = false;
  bool isSettingBarOpen = false;
  bool isSettingBarVisible = false;
  bool isContactUsBarVisible = false;
  bool isShareBarVisible = false;
  bool isLogoutPopupVisible = false;




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
      resizeToAvoidBottomInset: false,

      body: GestureDetector(
        onTap: () {
          if (isPopupOpen) {
            setState(() {
              isPopupOpen = false;
            });
          }
        },
        child: Container(
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
                  Positioned(
                    top: spacingFromTop,
                    left: spacingFromSide,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        'assets/icons/back_button.svg',
                        width: backButtonSize,
                        height: backButtonSize,
                      ),
                    ),
                  ),
                  // Menu Button
                  Positioned(
                    top: spacingFromTop,
                    right: spacingFromSide,
                    child: InkWell(
                      onTap: () {
                        // Handle menu button tap here
                        // You can implement your desired menu behavior
                      },
                      child: SvgPicture.asset(
                        'assets/icons/menu_bar.svg',
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
                          'Login',
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
                              'Login ID',
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
                                  controller: loginIdController,
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Enter login ID',
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
                              'Password',
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
                                  controller: passwordController,
                                  obscureText: true,
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Password',
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



                          SizedBox(height: 10),

                          // "Forgot Password?" Link Placeholder
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 50),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
                                  );                              },
                                child: Text(
                                  'Forgot Password?',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFF7D41FB),
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),


                          SizedBox(height: 14), // Distance between text and checkbox
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

                          SizedBox(height: 26),

                          // Login Button Placeholder
                          Center(
                            child: InkWell(
                              onTap: () {
                                Get.offAll(ScreenHomePage());
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
                                    'Login',
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

                  // "Do not have an account?" Text
                  Positioned(
                    bottom: textBottomMargin,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Do not have an account?',
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
                            'Sign up',
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
                                setState(() {
                                  isShareBarVisible = true; // Show the Share menu
                                  isPopupOpen = false; // Close the popup
                                });
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
                                setState(() {
                                  isSettingBarVisible = true; // Show the blue color bar
                                  isPopupOpen = false; // Close the popup
                                });
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
                                setState(() {
                                  isSettingBarVisible = false; // Hide the blue color bar
                                  isContactUsBarVisible = true; // Show the Contact Us bar
                                });
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
                    ),
                  if (isSettingBarVisible)
                      Stack(
                        children: [
                          Positioned.fill(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSettingBarVisible = false; // Hide the blue color bar
                                });
                              },
                              child: Container(
                                color: Colors.black.withOpacity(0.9), // Semi-transparent overlay
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            top: 120, // Start below the top 160 pixels
                            child: BlueColorBar(),
                          ),

                          if (isLogoutPopupVisible)
                            Center(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isLogoutPopupVisible = false; // Close the logout pop-up
                                  });
                                },
                                child: Container(
                                  color: Colors.black.withOpacity(0.7), // Semi-transparent overlay
                                ),
                              ),
                            ),

                          if (isLogoutPopupVisible)
                            LogoutPopup(),

                        ],
                      ),
                  if (isContactUsBarVisible)
                    Stack(
                      children: [
                        Positioned.fill(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isContactUsBarVisible = false;
                              });
                            },
                            child: Container(
                              color: Colors.black.withOpacity(0.9),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          top: 120,
                          child: Container(
                            height: MediaQuery.of(context).size.height - 160,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFF170044),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 44),
                                      child: Text(
                                        'Contact Us',
                                        style: GoogleFonts.josefinSans(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 44),
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(.2),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.close_rounded,
                                          size: 18,
                                          color: Colors.white.withOpacity(1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 40),
                                InkWell(
                                  onTap: () {
                                    // Handle phone number click
                                  },
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/phone.svg', // Replace with the path to your phone icon SVG
                                          width: 14,
                                          height: 14,
                                        ),
                                        SizedBox(width: 8), // Adjust the space between icon and text
                                        Text(
                                          '0800-1-JHSPEAKS',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: .5, // Thickness of the line
                                  color: Colors.white.withOpacity(.2),
                                ),
                                SizedBox(height: 20),
                                InkWell(
                                  onTap: () {
                                    // Handle email click
                                  },
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/mail.svg', // Replace with the path to your mail icon SVG
                                          width: 14,
                                          height: 14,
                                        ),
                                        SizedBox(width: 8), // Adjust the space between icon and text
                                        Text(
                                          'info@jhspeaks.com',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: .5, // Thickness of the line
                                  color: Colors.white.withOpacity(.2),
                                ),
                                SizedBox(height: 20),
                                InkWell(
                                  onTap: () {
                                    // Handle FAQs click
                                  },
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/faq.svg', // Replace with the path to your FAQs icon SVG
                                          width: 14,
                                          height: 14,
                                        ),
                                        SizedBox(width: 8), // Adjust the space between icon and text
                                        Text(
                                          'FAQs',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  height: .5, // Thickness of the line
                                  color: Colors.white.withOpacity(.2),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (isShareBarVisible)
                    Stack(
                      children: [
                        Positioned.fill(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isShareBarVisible = false; // Hide the Share menu
                              });
                            },
                            child: Container(
                              color: Colors.black.withOpacity(0.9), // Semi-transparent overlay
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          top: 380,
                          child: ShortBlueColorBar(), // Use the ShortBlueColorBar widget or customize as needed
                        ),
                        // Add your Share menu content here
                      ],
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}