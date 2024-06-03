import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/models/student_model.dart';

// ignore: must_be_immutable
class DesktpCard extends StatelessWidget {
  final StudentModel studentModel;

  DesktpCard({super.key, required this.studentModel});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: Get.height * 0.9,
        width: Get.width * 0.9,
        decoration: BoxDecoration(
          border: Border.all(width: 2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                "assets/images/qr-code.png",
                width: Get.width * 0.4,
              ),
            ),
            SizedBox(
              width: Get.width * 0.2,
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const Text(
                          " الاسم : ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${studentModel.firstName}",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        const Text(
                          " اللقب : ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${studentModel.lastName}",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const Text(
                          " رقم الطالب : ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${studentModel.number}",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        const Text(
                          "السنة  : ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${studentModel.level}",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
