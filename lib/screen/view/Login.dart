import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:managmentsh/Component/AppColors.dart';
import 'package:managmentsh/Component/ScreenSize.dart';
import 'package:managmentsh/core/class/state_raqust.dart';
import 'package:managmentsh/core/const/app_colors.dart';

import '../../controller/auth/login_controler.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControlerImp controller = Get.put(LoginControlerImp());
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            final widthScreen = constraints.maxWidth;
            return SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(50),
                      child: Image.asset(
                        "assets/images/male.png",
                        width: 200,
                      ),
                    ),
                    Form(
                      key: controller.globalKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: widthScreen < sm
                                  ? widthScreen
                                  : widthScreen * 0.5,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              child: TextFormField(
                                controller: controller.email,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'الرجاء إدخال كلمة الاسم واللقب';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "الاسم واللقب",
                                ),
                              ),
                            ),
                            Container(
                              width: widthScreen < sm
                                  ? widthScreen
                                  : widthScreen * 0.5,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              child: GetBuilder<LoginControlerImp>(
                                  id: "obscureText",
                                  builder: (c) {
                                    return TextFormField(
                                      controller: controller.pasword,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'الرجاء إدخال كلمة المرور';
                                        }

                                        return null;
                                      },
                                      obscureText: c.obscureText,
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(),
                                        labelText: "كلمة المرور",
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            c.obscureText
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          ),
                                          onPressed: () {
                                            c.showPaswored();
                                          },
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: widthScreen < sm ? widthScreen : widthScreen * 0.4,
                      height: 50,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Appcolors.seconderyColor,
                          ),
                          color: Appcolors.seconderyColor),
                      child: GetBuilder<LoginControlerImp>(
                          id: "login",
                          builder: (c) {
                            return c.stateRaqust != StateRaqust.Laoding
                                ? InkWell(
                                    onTap: () {
                                      // Navigator.of(context).pushNamedAndRemoveUntil(
                                      //   "/homepage",
                                      //   (route) => false,
                                      // );
                                      controller.login();
                                    },
                                    child: const Center(
                                      child: Text(
                                        "تسجيل الدخول",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Appcolors.whithe),
                                      ),
                                    ),
                                  )
                                : const Center(
                                    child: CircularProgressIndicator(
                                      color: AppColors.whithe,
                                    ),
                                  );
                          }),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
