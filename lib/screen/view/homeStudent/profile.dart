import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/screen/profile/view_profile_controller.dart';
import '../../widget/profile/circler_student_widget.dart';
import '../../widget/profile/item_profile_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    // HommeController hommeController = Get.find();
    ViewProfileController controller = Get.put(ViewProfileController());
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          const CirclerStudentWidget(),
          const SizedBox(
            height: 15,
          ),
          Text(
            "${controller.hommeController.model.firstName} ${controller.hommeController.model.lastName}",
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            controller.hommeController.model.number,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: controller.modles.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemProfileWidget(
                itemProfile: controller.modles[index],
              );
            },
          ))
        ],
      ),
    );
  }
}
