import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:managmentsh/core/class/handling_data.dart';

import '../../../controller/screen/cours/view_cours_controller.dart';
import '../../../core/const/app_colors.dart';
import '../../../data/models/tutorials_modle.dart';

class Coursepage extends StatelessWidget {
  const Coursepage({super.key});

  @override
  Widget build(BuildContext context) {
    ViewCoursController c = Get.put(ViewCoursController());

    return Scaffold(
      appBar: AppBar(
        title: Text(c.modle.coursName!),
      ),
      body: GetBuilder<ViewCoursController>(builder: (controller) {
        return HadlingData(
          stateRaqust: controller.stateRaqust,
          child: ListView.builder(
              itemCount: controller.modles.length,
              itemBuilder: (context, index) {
                final TutorialsModle tutorialsModle = controller.modles[index];
                return Container(
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
                  margin: const EdgeInsets.all(5),
                  // color: Colors.white70,
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                      title: Text(
                        "${tutorialsModle.tutorialsTitle}",
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        tutorialsModle.tutorialsSubtitle!,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.goToTaturiles(tutorialsModle);
                            },
                            child: const Icon(
                              Icons.visibility, // أيقونة العين

                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            onTap: () {
                              controller.downloadFile(tutorialsModle);
                            },
                            child: const Icon(
                              Icons.download_outlined,
                              color: Colors.black54,
                              size: 30,
                            ),
                          ),
                        ],
                      )),
                );
              }),
        );
      }),
    );
  }
}
