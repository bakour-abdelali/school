import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:managmentsh/controller/screen/homme_controller.dart';
import 'package:managmentsh/core/const/app_colors.dart';
import 'package:managmentsh/core/const/app_routes.dart';
import 'package:managmentsh/core/servises/servises.dart';

class ViewProfileController extends GetxController {
  static Servises myServises = Get.find();
  HommeController hommeController = Get.find();

  static void logOut() {
    myServises.sharedPreferences.setInt("step", 1);
    Get.toNamed(AppRoutes.login);
  }

  static void verficationLogOut() {
    Get.defaultDialog(
      title: "تأكيد تسجيل الخروج",
      middleText: "هل أنت متأكد أنك تريد تسجيل الخروج؟",
      textCancel: "إلغاء",
      confirm: ElevatedButton(
        style:
            ElevatedButton.styleFrom(backgroundColor: AppColors.primarycolor),
        onPressed: () {
          logOut();
        },
        child: const Text(
          "تأكيد",
          style:
              TextStyle(color: AppColors.whithe, fontWeight: FontWeight.bold),
        ),
      ),
      confirmTextColor: AppColors.whithe,
      onCancel: () {},
      onConfirm: () {
        logOut();
      },
    );
  }

  static void goToSubscrbtion() {
    Get.toNamed(AppRoutes.viewSubscriptionScreen);
  }

  static void goToHistorycSubscrbtion() {
    Get.toNamed(AppRoutes.viewHistoricSubscriptionScreen);
  }

  static void goToMyGropu() {
    Get.toNamed(AppRoutes.viewMyGroupScreen);
  }

  List<ItemProfile> modles = [
    ItemProfile(
      taitle: 'الاشتراكات',
      iconData: Icons.payment,
      onTap: () {
        goToSubscrbtion();
      },
    ),
    ItemProfile(
      taitle: 'الاشتراكات السابقة',
      iconData: Icons.history,
      onTap: () {
        goToHistorycSubscrbtion();
      },
    ),
    ItemProfile(
      taitle: 'افواجي',
      iconData: Icons.group_sharp,
      onTap: () {
        goToMyGropu();
      },
    ),
    ItemProfile(
      taitle: 'الاعدادات',
      iconData: Icons.settings_outlined,
      onTap: () {},
    ),
    ItemProfile(
      taitle: 'خروج',
      iconData: Icons.logout,
      onTap: () {
        verficationLogOut();
      },
    ),
  ];
}

class ItemProfile {
  final String taitle;
  final IconData iconData;
  void Function()? onTap;

  ItemProfile({required this.taitle, required this.iconData, this.onTap});
}
