import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/app_routes.dart';
import '../servises/servises.dart';

class MyMiddlewares extends GetMiddleware {
  @override
  int? get priority => 1;
  Servises myServises = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServises.sharedPreferences.getInt('step') == 2) {
      return const RouteSettings(name: AppRoutes.homepage);
    }
    if (myServises.sharedPreferences.getInt('step') == 1) {
      return const RouteSettings(name: AppRoutes.login);
    }
    return null;
  }
}
