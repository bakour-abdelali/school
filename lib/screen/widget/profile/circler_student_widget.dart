import 'package:flutter/material.dart';

class CirclerStudentWidget extends StatelessWidget {
  const CirclerStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 65,
      backgroundImage: AssetImage("assets/images/male.png"),
    );
  }
}
