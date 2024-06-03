import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:managmentsh/controller/screen/card/view_card_controller.dart';
import 'package:managmentsh/screen/screensize/desktop/home/desktopcart.dart';
import 'package:managmentsh/screen/screensize/phone/home/phoneCard.dart';

class CardStudent extends StatelessWidget {
  const CardStudent({super.key});

  @override
  Widget build(BuildContext context) {
    ViewCardController controller = Get.put(ViewCardController());
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (context.isPhone) {
          return PhoneCArd(
            studentModel: controller.modle,
          );
        } else {
          return DesktpCard(
            studentModel: controller.modle,
          );
        }
      }),
    );
  }
}
