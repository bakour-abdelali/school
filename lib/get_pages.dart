import 'package:get/get.dart';
import 'package:managmentsh/core/middlewares/my_middlewares.dart';
import 'package:managmentsh/screen/view/Login.dart';
import 'package:managmentsh/screen/view/Onboarding.dart';
import 'package:managmentsh/screen/view/homeStudent/Home.dart';
import 'package:managmentsh/screen/view/homeStudent/coursepage.dart';
import 'package:managmentsh/screen/view/homeStudent/subscription/view_historic_subscription_screen.dart';
import 'package:managmentsh/screen/view/my_group/view_my_group_screen.dart';

import 'core/const/app_routes.dart';
import 'screen/view/homeStudent/cours/view_pdf_screen.dart';
import 'screen/view/homeStudent/subscription/view_subscription_screen.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(
      name: AppRoutes.onboarding,
      page: () => const Onboarding(),
      middlewares: [MyMiddlewares()]),
  GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
  GetPage(name: AppRoutes.homepage, page: () => const Homepage()),
  GetPage(name: AppRoutes.coursepage, page: () => const Coursepage()),
  GetPage(
      name: AppRoutes.viewSubscriptionScreen,
      page: () => const ViewSubscriptionScreen()),
  GetPage(
      name: AppRoutes.viewHistoricSubscriptionScreen,
      page: () => const ViewHistoricSubscriptionScreen()),
  GetPage(
      name: AppRoutes.viewMyGroupScreen, page: () => const ViewMyGroupScreen()),
  GetPage(
      name: AppRoutes.viewItemCourScreen,
      page: () => const ViewItemCourScreen()),

  // GetPage(name: AppRoutes.classpage, page: () => const Classepage()),
];
