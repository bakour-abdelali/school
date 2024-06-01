import 'package:get/get.dart';
import 'package:managmentsh/core/const/app_routes.dart';
import 'package:managmentsh/core/servises/servises.dart';

class OnboardingController extends GetxController {
  Servises myServises = Get.find();
  goToLoginScreen() {
    myServises.sharedPreferences.setInt('step', 1);
    Get.toNamed(AppRoutes.login);
  }
}
