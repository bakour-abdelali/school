import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:managmentsh/core/class/stautus.dart';
import 'package:managmentsh/core/const/app_routes.dart';
import 'package:managmentsh/data/remot/auth/login_data.dart';

import '../../core/class/state_raqust.dart';
import '../../core/funcion/alert_not_cox.dart';
import '../../core/funcion/head_data.dart';
import '../../core/servises/servises.dart';

abstract class LoginControler extends GetxController {
  void login();
  // void gotoSingUp();
  // void goToForgetPasword();
}

class LoginControlerImp extends LoginControler {
  late TextEditingController email;
  late TextEditingController pasword;
  StateRaqust? stateRaqust;
  LoginData loginDataRemot = LoginData(Get.find());
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  bool obscureText = true;
  Servises myServisess = Get.find();
  @override
  void onInit() {
    email = TextEditingController();
    pasword = TextEditingController();
    super.onInit();
  }

  void showPaswored() {
    obscureText = !obscureText;
    update(['obscureText']);
  }

  @override
  void login() async {
    print(pasword.text);
    var k = globalKey.currentState;
    if (k!.validate()) {
      stateRaqust = StateRaqust.Laoding;
      update(["login"]);

      var respons =
          await loginDataRemot.login(email: email.text, password: pasword.text);
      stateRaqust = headData(respons);

      if (stateRaqust == StateRaqust.succes) {
        if (respons[AppStatus.status] == AppStatus.sucsess) {
          myServisess.sharedPreferences
              .setString("student_id", respons['data']['student_id']);
          myServisess.sharedPreferences
              .setString("student_fname", respons['data']['student_fname']);
          myServisess.sharedPreferences
              .setString("student_lname", respons['data']['student_lname']);
          myServisess.sharedPreferences
              .setString("student_email", respons['data']['student_email']);
          myServisess.sharedPreferences
              .setString("student_phone", respons['data']['student_phone']);
          myServisess.sharedPreferences.setString(
              "student_date_create", respons['data']['student_date_create']);
          myServisess.sharedPreferences
              .setString("student_number", respons['data']['student_number']);
          myServisess.sharedPreferences
              .setString("student_active", respons['data']['student_active']);
          myServisess.sharedPreferences
              .setString("student_image", respons['data']['student_image']);
          myServisess.sharedPreferences.setString(
              "student_verfaicode", respons['data']['student_verfaicode']);
          myServisess.sharedPreferences
              .setString("student_level", respons['data']['student_level']);
          myServisess.sharedPreferences.setInt("step", 2);
          Get.toNamed(AppRoutes.homepage);
        } else if (respons[AppStatus.status] == AppStatus.failure) {
          Get.defaultDialog(
              title: "waring ",
              middleText: 'the email or number phont is not fud');
        }
      } else {
        noIntrnat();
      }
      update(["login"]);
    }
    @override
    void dispose() {
      pasword.dispose();
      email.dispose();

      super.dispose();
    }
  }
}
