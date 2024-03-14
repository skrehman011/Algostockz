import 'package:algostocks/main.dart';
import 'package:algostocks/views/screens/login.dart';
import 'package:algostocks/widget/custom_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedScreen extends StatefulWidget {
  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  int currentIndex = 0;
  List<String> headings = [
    "Select Date",
    "Choose Ticker Symbols",
    "Retrieve Stock Data",
    "View the Stock Data",
    "Customize Your Alerts",
    "Explore Additional Features",
  ];

  List<String> paragraphs = [
    "Begin by visiting the Stock Selection screen and choose a specific date you want to explore for stock data. Simply tap on the date picker and select your desired date from the calendar",
    " Enter the ticker symbols of the stocks you wish to track. You can enter one or multiple symbols, separated by commas. Not sure about the ticker symbols? No worries! Our app allows you to search for stocks by their company names, and we'll provide suggestions for the corresponding symbols",
    "After selecting the date and entering the ticker symbols, tap the Get Data button to retrieve the stock data for the specified date and stocks. AlgoStockz will fetch the latest information, including the stock's name, price, signal, and target",
    "The Stock Data screen will present the retrieved information in an organized table format. You can easily navigate through the data by scrolling horizontally or vertically. To sort the data based on a specific column, simply tap on the column header. Additionally, leverage the search and filter options to find specific stocks or narrow down your results effortlessly",
    "Stay ahead of the game by setting up personalized stock alerts. Head over to the Settings screen within AlsoStockz, where you can configure your preferred notification settings, including price thresholds and signal types. Receive timely alerts directly on your device to make informed investment decisions",
    "AlgoStockz offers a range of additional features to enhance your stock tracking experience. Dive deeper into stock details by tapping on a specific stock to access comprehensive information, including charts, historical data, and news updates. Stay updated with market trends and analysis to make informed decisions.",
  ];

  @override
  void initState() {
    super.initState();
    startChangingSteps();
  }

  void startChangingSteps() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        currentIndex = (currentIndex + 1) % headings.length;
      });
      startChangingSteps(); // Recursive call to continue changing steps
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyApp()),
          );
        },
        child: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: BoxDecoration(
            color: Color.fromRGBO(23, 0, 68, 1).withOpacity(.5), // Adjust color as needed
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 100, // Adjust this value as needed
                width: screenWidth,
                child: Center(
                  child: Text(
                    "How it works?",
                    style: GoogleFonts.josefinSans(
                      textStyle: TextStyle(
                        color: Color(0xFF0BFFB7), // Hex color value
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.54,
                left: 0,
                right: 0,
                child: Container(
                  width: screenWidth,
                  height: screenHeight * 0.46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
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
                top: screenHeight * 0.98,
                left: screenWidth * 0.37,
                child: Divider(
                  color: Color.fromRGBO(239, 239, 239, 1),
                  thickness: 5,
                ),
              ),
              Positioned(
                top: screenHeight * 0.89,
                left: screenWidth * 0.115,
                child: Container(
                  width: screenWidth * 0.77,
                  height: screenHeight * 0.071,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ), backgroundColor: Color.fromRGBO(124, 65, 251, 1),
                    ),
                    child: Text(
                      'Get Started',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w700,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.68,
                left: screenWidth * 0.268,
                child: Container(
                  width: screenWidth * 0.467,
                  height: screenHeight * 0.113,
                  child:SvgPicture.asset(
                    'assets/icons/logo.svg', // Replace with the path to your mail icon SVG
                    width: 14,
                    height: 14,
                  ),
                  // child: CustomSvg(name: '',)
                ),
              ),
              Positioned(
                top: screenHeight * 0.2,
                left: screenWidth * 0.1,
                child: Center(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: screenWidth * 0.8,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(124, 65, 251, 0.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Text(
                          headings[currentIndex],
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          paragraphs[currentIndex],
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 14,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
