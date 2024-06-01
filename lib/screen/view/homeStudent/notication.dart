import 'package:flutter/material.dart';

class NotificationStudent extends StatelessWidget {
  const NotificationStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          child: Text("nodtfy"),
        ),
      ),
    );
  }
}
