import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF170044), // Background color
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70), // Space from top
            Center(
              child: SvgPicture.asset(
                'assets/logo.svg',
                width: 98,
                height: 50,
              ),
            ),

            SizedBox(height: 40), // Space after the logo
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Welcome Junaid!',
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: 30), // Space after the "Welcome" text

            // Row containing two white rectangles with rounded corners
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 60) / 2, // Half of the available width
                      height: 150,
                      color: Colors.white.withOpacity(.2),
                    ),
                  ),
                  SizedBox(width: 20), // Space between rectangles
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 60) / 2, // Half of the available width
                      height: 150,
                      color: Colors.white.withOpacity(.2),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
