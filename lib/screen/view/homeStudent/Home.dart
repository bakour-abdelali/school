import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:managmentsh/Component/AppColors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:managmentsh/controller/screen/homme_controller.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(HommeController());
    return GetBuilder<HommeController>(builder: (controller) {
      return Scaffold(
        body: controller.widgetOptions.elementAt(controller.selectedIndex),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Appcolors.bluelight,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              ),
            ],
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Appcolors.seconderyColor,
              hoverColor: Appcolors.primarycolor,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              tabBackgroundColor: Appcolors.seconderyColor,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                ),
                GButton(
                  icon: Icons.notification_add,
                ),
                GButton(
                  icon: LineIcons.creditCard,
                ),
                GButton(
                  icon: LineIcons.user,
                ),
              ],
              selectedIndex: controller.selectedIndex,
              onTabChange: (index) {
                controller.onItemTapped(index);
              },
            ),
          ),
        ),
      );
    });
  }
}
