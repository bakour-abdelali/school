import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:managmentsh/screen/screensize/desktop/home/desktopcart.dart';
import 'package:managmentsh/screen/screensize/phone/home/phoneCard.dart';

class CardStudent extends StatelessWidget {
  const CardStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          final Widthscreen = constraints.maxWidth;
          final hightScreen = constraints.maxHeight;
          if (context.isPhone) {
            return PhoneCArd();
          } else {
            return DesktpCard(
              Widthscreen: Widthscreen,
              hightScreen: hightScreen,
            );
          }
        }),
      ),
    );
  }
}
