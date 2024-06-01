import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DesktpCard extends StatelessWidget {
  double hightScreen;
  double Widthscreen;

  DesktpCard({super.key, required this.Widthscreen, required this.hightScreen});
  @override
  Widget build(BuildContext context) {
    final Map<String, String> studentData = {
      "Name": "Gasmi",
      "LastName": "Aymen",
      "StudentCode": "68797",
      "Gard": "3rd hight schoole",
    };
    // TODO: implement build
    return Center(
      child: Container(
        height: hightScreen * 0.9,
        width: Widthscreen * 0.9,
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
                width: Widthscreen * 0.4,
              ),
            ),
            SizedBox(
              width: Widthscreen * 0.2,
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
                          "الاسم : ",
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
                          "اللقب: ",
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
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          " رقم الطالب  : ",
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
                          "السنة : ",
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
