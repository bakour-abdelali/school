import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:managmentsh/core/servises/servises.dart';
import 'package:managmentsh/data/models/student_model.dart';
import 'package:managmentsh/screen/view/homeStudent/card.dart';
import 'package:managmentsh/screen/view/homeStudent/notication.dart';
import 'package:managmentsh/screen/view/homeStudent/page1.dart';
import 'package:managmentsh/screen/view/homeStudent/profile.dart';

class HommeController extends GetxController {
  late StudentModel model;

  late int selectedIndex;
  Servises myServises = Get.find();

  List<Widget> widgetOptions = const [
    page1(),
    NotificationStudent(),
    CardStudent(),
    Profile(),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }

  getStudent() {
    final studentId = myServises.sharedPreferences.getString('student_id');
    final firstName = myServises.sharedPreferences.getString('student_fname');
    final lastName = myServises.sharedPreferences.getString('student_lname');
    final email = myServises.sharedPreferences.getString('student_email');
    final phone = myServises.sharedPreferences.getString('student_phone');
    final dateCreate =
        myServises.sharedPreferences.getString('student_date_create');
    final number = myServises.sharedPreferences.getString('student_number');
    final active = myServises.sharedPreferences.getString('student_active');
    final image = myServises.sharedPreferences.getString('student_image');
    final verificationCode =
        myServises.sharedPreferences.getString('student_verfaicode');
    final level = myServises.sharedPreferences.getString('student_level');

    if (studentId != null &&
        firstName != null &&
        lastName != null &&
        email != null &&
        phone != null &&
        dateCreate != null &&
        number != null &&
        active != null &&
        image != null &&
        verificationCode != null &&
        level != null) {
      return StudentModel(
        studentId: studentId,
        firstName: firstName,
        lastName: lastName,
        email: email,
        phone: phone,
        dateCreate: dateCreate,
        number: number,
        active: active,
        image: image,
        verificationCode: verificationCode,
        level: level,
      );
    }
    return null; // Return null if any value is missing
  }

  @override
  void onInit() {
    selectedIndex = 0;
    model = getStudent();
    super.onInit();
  }
}
