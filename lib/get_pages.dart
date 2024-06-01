import 'package:get/get.dart';
import 'package:managmentsh/core/middlewares/my_middlewares.dart';
import 'package:managmentsh/screen/view/HomeTeacher/classpage.dart';
import 'package:managmentsh/screen/view/Login.dart';
import 'package:managmentsh/screen/view/Onboarding.dart';
import 'package:managmentsh/screen/view/homeStudent/Home.dart';
import 'package:managmentsh/screen/view/homeStudent/coursepage.dart';

import 'core/const/app_routes.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(
      name: AppRoutes.onboarding,
      page: () => const Onboarding(),
      middlewares: [MyMiddlewares()]),
  GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
  GetPage(name: AppRoutes.homepage, page: () => const Homepage()),
  GetPage(name: AppRoutes.coursepage, page: () => const Coursepage()),
  GetPage(name: AppRoutes.classpage, page: () => const Classepage()),
];
