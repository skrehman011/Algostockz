import 'package:algostocks/model/model_performance.dart';
import 'package:algostocks/views/screens/screen_performance2.dart';
import 'package:algostocks/widget/widget_dash_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../controller/performance_controller.dart';

class ScreenDashboard extends StatefulWidget {
  @override
  State<ScreenDashboard> createState() => _ScreenDashboardState();
}

class _ScreenDashboardState extends State<ScreenDashboard> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    PerformanceController performanceController =
        Get.put(PerformanceController());
    performanceController.fetchPerformanceData();

    return Scaffold(
      backgroundColor: Color(0xFF170044),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 25,
          ),
        ),
        elevation: 0,
        backgroundColor: Color(0xFF170044),
        title: Text(
          'Dashboard',
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(4),
                width: Get.width,
                // height: Get.height * 0.53,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.5),
                    borderRadius: BorderRadius.circular(25),
                    color:  Color(0xFF453369)),
                child: Theme(data: ThemeData(
                  datePickerTheme: DatePickerThemeData(
                    backgroundColor: Color(0xFF453369),
                    weekdayStyle: TextStyle(
                      color: Color(0xFF0BFFB7),
                      fontWeight: FontWeight.w700,
                      fontSize: 16
                    ),
                    dayStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16
                    ),
                    headerHelpStyle: TextStyle(
                      color: Colors.white
                    ),
                    headerHeadlineStyle: TextStyle(
                      color: Colors.white,

                    ),
                    yearStyle: TextStyle(
                      color: Colors.white
                    )
                  ),

                  backgroundColor: Color(0xFF453369),
                  primaryColor: Colors.blue, // Color of the selected date
                ),
                  child: Container(
                    height: 281.h,
                    width: 310.w,
                    child: CalendarDatePicker(
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025),
                    onDateChanged: (value) {
                      setState(() {
                        _selectedDay = value;
                      });
                    },



                                    ),
                  ),

                ),
              ).marginSymmetric(vertical: 20),
              Container(
                width: 350,
                height: 47,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12),
                  ),
                ),
                child: Text(
                  "Predictions for ${_selectedDay.day}/${_selectedDay.month}/${_selectedDay.year}",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black),
                ).marginOnly(left: 50, top: 15),
              ),
              Container(
                // width: 270,
                // height: 25,
                width: Get.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF7D41FB),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ticker",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Text(
                      "Price",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Text(
                      "Signal",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Text(
                      "Target",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Obx(() {
                return (performanceController.performanceData.isEmpty)
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        itemCount: performanceController.performanceData.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          PerformanceData performanceData =
                              performanceController.performanceData[index];
                          return WidgetDashContainer(
                            texts: [
                              "${performanceData.ticker}",
                              "\$${performanceData.price}",
                              "${performanceData.signal}",
                              "${performanceData.target}"
                            ],
                            color: Colors.blueGrey,
                          );
                        },
                      );
              }),
              // // Obx(() {
              // //   return WidgetDashContainer(
              // //     texts: [
              // //       performanceController.ticker.value,
              // //       '\$${performanceController.price.value.toStringAsFixed(2)}',
              // //       performanceController.signal.value,
              // //       'Target: \$${performanceController.target.value.toStringAsFixed(2)}'
              // //     ],
              // //     color: Colors.blueGrey,
              // //   ).marginOnly(top: 5);
              // // },),
              //
              //
              // WidgetDashContainer(
              //   texts: [
              //     "${performanceController.ticker}",
              //     "\$${performanceController.price}",
              //     "${performanceController.signal}",
              //     "${performanceController.target}"
              //   ],
              //   color: Colors.blueGrey,
              // ),
              // Obx(() {
              //   return WidgetDashContainer(
              //     texts: [
              //       "${performanceController.ticker.value}",
              //       "\$${performanceController.price.value}",
              //       "${performanceController.signal.value}",
              //       "${performanceController.target.value}"
              //     ],
              //     color: Colors.blueGrey,
              //   );
              // }),
              // WidgetDashContainer(
              //   texts: [
              //     "${performanceController.ticker}",
              //     "\$${performanceController.price}",
              //     "${performanceController.signal}",
              //     "${performanceController.target}"
              //   ],
              //   color: Colors.blueGrey,
              // ),
              // WidgetDashContainer(
              //   texts: [
              //     "${performanceController.ticker}",
              //     "\$${performanceController.price}",
              //     "${performanceController.signal}",
              //     "${performanceController.target}"
              //   ],
              //   color: Colors.blueGrey,
              // ),
              // WidgetDashContainer(
              //   texts: [
              //     "${performanceController.ticker}",
              //     "\$${performanceController.price}",
              //     "${performanceController.signal}",
              //     "${performanceController.target}"
              //   ],
              //   color: Colors.blueGrey,
              // ),
              // WidgetDashContainer(
              //   texts: [
              //     "${performanceController.ticker}",
              //     "\$${performanceController.price}",
              //     "${performanceController.signal}",
              //     "${performanceController.target}"
              //   ],
              //   color: Colors.blueGrey,
              // ),

              // ElevatedButton(
              //     onPressed: () {
              //       performanceController.fetchPerformanceData();
              //     },
              //     child: Icon(
              //       Icons.arrow_back_ios_new_sharp,
              //       size: 20,
              //       color: Colors.black26,
              //     ))
            ],
          ),
        ).marginSymmetric(horizontal: 15, vertical: 15),
      ),
    );
  }
}
