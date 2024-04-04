import 'package:algostocks/controller/controller_home.dart';
import 'package:algostocks/controller/user_controller.dart';
import 'package:algostocks/views/layouts/layout_disclaimer.dart';
import 'package:algostocks/views/layouts/layout_home.dart';
import 'package:algostocks/views/layouts/layout_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ScreenHomePage extends StatelessWidget {
  ControllerHome controllerHome=Get.put(ControllerHome());
  UserController userController=Get.put(UserController());

  List<Widget> layouts = [
    LayoutHome(),
    LayoutDisclaimer(),
    LayoutProfile()
  ];
  RxInt selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    userController.fetchUserAccounts();
    return Scaffold(
      body: Obx(() {
        return layouts[selectedIndex.value];
      }),


      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Color(0xFF170044),
        ),
        child: Obx(() {
          return BottomNavigationBar(
            currentIndex: selectedIndex.value,
            onTap: (index) {
              selectedIndex.value = index;
            },

            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/home.svg",height: 20,width: 20,),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/disclaimer.svg",height: 20,width: 20,),
                label: 'Disclaimer',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/profile.svg",height: 20,width: 20,),
                label: 'Profile',
              ),
            ],
            backgroundColor: Color(0xFF170044),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
          );
        }),
      ),);
  }
}
