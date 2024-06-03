import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:managmentsh/Component/AppColors.dart';
import 'package:managmentsh/controller/screen/page1_controller.dart';
import 'package:managmentsh/core/class/handling_data.dart';

import '../../../core/const/app_colors.dart';
import '../../widget/page_one/item_page_one_widget.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    final Page1Controller controller = Get.put(Page1Controller());
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Row(
              children: [
                const Text(
                  "اهلا !",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  controller.hommeController.model.firstName,
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Appcolors.bluelight,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 1,
                ),
                Image.asset(
                  "assets/images/school.png",
                  width: 100,
                ),
                const Spacer(
                  flex: 2,
                ),
                const Text(
                  "اسم لمدرسة",
                  style: TextStyle(fontSize: 20),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "الدروس ",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Expanded(
            child: GetBuilder<Page1Controller>(builder: (c) {
              return HadlingData(
                stateRaqust: c.stateRaqust,
                child: ListView.builder(
                  itemCount: c.modles.length,
                  itemBuilder: (_, index) {
                    final m = c.modles[index];
                    return ItemPageOneWidget(
                      m: m,
                    );
                  },
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
