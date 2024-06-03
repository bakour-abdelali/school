import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/screen/my_group/view_my_group_controller.dart';
import '../../../core/class/handling_data.dart';
import '../../widget/my_group/item_my_group_widget.dart';

class ViewMyGroupScreen extends StatelessWidget {
  const ViewMyGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ViewMyGroupController());
    return Scaffold(
        appBar: AppBar(
          title: const Text("افواجي"),
        ),
        body: GetBuilder<ViewMyGroupController>(builder: (controller) {
          return HadlingData(
              stateRaqust: controller.stateRaqust,
              child: ListView.builder(
                itemCount: controller.modles.length,
                itemBuilder: (BuildContext context, int index) {
                  return ItemMyGroupWidget(model: controller.modles[index]);
                },
              ));
        }));
  }
}
