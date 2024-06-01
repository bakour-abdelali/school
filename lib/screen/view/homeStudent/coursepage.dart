import 'package:flutter/material.dart';

class Coursepage extends StatefulWidget {
  const Coursepage({super.key});

  @override
  State<Coursepage> createState() => _CoursepageState();
}

class _CoursepageState extends State<Coursepage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("اسم المادة"),
        ),
        body: Container(
          child: Column(
            children: [
              Card(
                color: Colors.white70,
                margin: const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const ListTile(
                  title: Text(
                    'عنوان الدرس',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("cours&.pdp"),
                  trailing: Icon(
                    Icons.picture_as_pdf,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
