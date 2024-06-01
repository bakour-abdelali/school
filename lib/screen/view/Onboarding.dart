import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:managmentsh/Component/AppColors.dart';
import 'package:managmentsh/Component/ScreenSize.dart';

import '../../controller/screen/onboarding_controller.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());
    return Scaffold(
      backgroundColor: Appcolors.primarycolor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          return Column(
            children: [
              Expanded(
                flex: 2,
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 100),
                    child: Image.asset(
                      "assets/images/school.png",
                      width: 300,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                height: 70,
                width: screenWidth < sm ? double.infinity : sm,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Appcolors.whithe),
                ),
                child: InkWell(
                  onTap: () {
                    controller.goToLoginScreen();
                  },
                  child: const Center(
                    child: Text(
                      "متابعة",
                      style: TextStyle(fontSize: 20, color: Appcolors.whithe),
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              )
            ],
          );
        },
      ),
    );
  }
}
