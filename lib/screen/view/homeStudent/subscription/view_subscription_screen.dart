import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:managmentsh/core/class/handling_data.dart';

import '../../../../controller/screen/subscription/view_subscription_not_over.dart';

import '../../../widget/subscription/item_subscription_widget.dart';

class ViewSubscriptionScreen extends StatelessWidget {
  const ViewSubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ViewSubscriptionNotOver());
    return Scaffold(
      appBar: AppBar(
        title: const Text("الأشتراكات الحالية"),
      ),
      body: GetBuilder<ViewSubscriptionNotOver>(
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
