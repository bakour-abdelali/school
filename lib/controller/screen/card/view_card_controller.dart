import 'package:get/get.dart';
import 'package:managmentsh/controller/screen/homme_controller.dart';
import 'package:managmentsh/data/models/student_model.dart';

class ViewCardController extends GetxController {
  HommeController hommeController = Get.find();
  late StudentModel modle;

  @override
  void onInit() {
    modle = hommeController.model;
    super.onInit();
  }
}
