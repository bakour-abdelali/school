import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:managmentsh/core/class/handling_data.dart';

import '../../../../controller/screen/subscription/view_historic_subscription_controller.dart';
import '../../../widget/subscription/item_subscription_widget.dart';

class ViewHistoricSubscriptionScreen extends StatelessWidget {
  const ViewHistoricSubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ViewHistoricSubscriptionController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("الأشتراكات السابقة"),
      ),
      body: GetBuilder<ViewHistoricSubscriptionController>(
        builder: (controller) {
          return HadlingData(
              stateRaqust: controller.stateRaqust,
              child: ListView.builder(
                  itemCount: controller.modles.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemSubscriptionWidget(
                      model: controller.modles[index],
                    );
                  }));
        },
      ),
    );
  }
}
