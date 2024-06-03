import 'package:flutter/material.dart';
import 'package:managmentsh/Component/AppColors.dart';
import 'package:managmentsh/data/models/student_model.dart';

class PhoneCArd extends StatelessWidget {
  final StudentModel studentModel;

  const PhoneCArd({super.key, required this.studentModel});

  @override
  Widget build(BuildContext context) {
    // final Map<String, String> studentData = {
    //   "Name": "Gasmi",
    //   "LastName": "Aymen",
    //   "StudentCode": "68797",
    //   "Gard": "ثالتة ثانوي",
    // };
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Appcolors.primarycolor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                "assets/images/qr-code.png",
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            const Divider(
              color: Colors.black,
              height: 20,
              thickness: 1,
            ),
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
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
