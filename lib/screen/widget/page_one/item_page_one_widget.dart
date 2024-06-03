import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../controller/screen/page1_controller.dart';
import '../../../core/const/app_colors.dart';
import '../../../data/models/cour_modle.dart';

class ItemPageOneWidget extends GetView<Page1Controller> {
  final CourModel m;
  const ItemPageOneWidget({super.key, required this.m});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToViewTotarule(m);
        // Navigator.of(context).pushNamed("/coursepage");
      },
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.whithe,
          //
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6,
            ),
          ],
        ),
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
        child: ListTile(
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              m.coursName!,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          trailing: Icon(
            m.isExpired == "no"
                ? Icons.arrow_forward_ios_outlined
                : Icons.lock_outline,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
