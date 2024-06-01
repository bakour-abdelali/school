import 'package:flutter/material.dart';
import 'package:managmentsh/Component/AppColors.dart';

class PhoneCArd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> studentData = {
      "Name": "Gasmi",
      "LastName": "Aymen",
      "StudentCode": "68797",
      "Gard": "ثالتة ثانوي",
    };
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
                    "${studentData['Name']}",
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
                    "${studentData['LastName']}",
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
                    "${studentData['StudentCode']}",
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
                    "${studentData['Gard']}",
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
