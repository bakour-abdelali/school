import 'package:get/get.dart';
import 'package:managmentsh/controller/screen/homme_controller.dart';
import 'package:managmentsh/core/class/state_raqust.dart';
import 'package:managmentsh/core/class/stautus.dart';
import 'package:managmentsh/core/funcion/alert_not_cox.dart';
import 'package:managmentsh/core/funcion/head_data.dart';

import '../../data/models/cour_modle.dart';
import '../../data/remot/screen/cour_data.dart';

class Page1Controller extends GetxController {
  HommeController hommeController = Get.find();
  final CourData _data = CourData(Get.find());
  List<CourModel> modles = [];
  late StateRaqust stateRaqust;
  getData() async {
    stateRaqust = StateRaqust.Laoding;
    update();
    var respones = await _data.getCours(hommeController.model.studentId);
    stateRaqust = headData(respones);
    if (stateRaqust == StateRaqust.succes) {
      if (respones[AppStatus.status] == AppStatus.sucsess) {
        List list = respones['data'];
        modles.addAll(list.map((e) => CourModel.fromJson(e)));
        list.clear();
      } else if (respones[AppStatus.status] == AppStatus.failure) {
        stateRaqust = StateRaqust.fuler;
      }
    } else {
      noIntrnat();
    }
    update();
  }

  @override
  void onInit() {
    print(hommeController.model.studentId);
    getData();
    super.onInit();
  }
}
