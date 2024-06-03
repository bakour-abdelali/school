import 'package:get/get.dart';
import 'package:managmentsh/data/models/my_group_modle.dart';
import 'package:managmentsh/data/remot/screen/my_group_data.dart';

import '../../../core/class/state_raqust.dart';
import '../../../core/class/stautus.dart';
import '../../../core/funcion/alert_not_cox.dart';
import '../../../core/funcion/head_data.dart';
import '../homme_controller.dart';

class ViewMyGroupController extends GetxController {
  HommeController hommeController = Get.find();
  final MyGroupData _data = MyGroupData(Get.find());
  List<MyGroupModle> modles = [];
  late StateRaqust stateRaqust;

  getData() async {
    stateRaqust = StateRaqust.Laoding;
    update();
    var respones = await _data.getData(hommeController.model.studentId);
    stateRaqust = headData(respones);
    if (stateRaqust == StateRaqust.succes) {
      if (respones[AppStatus.status] == AppStatus.sucsess) {
        List list = respones['data'];
        modles.addAll(list.map((e) => MyGroupModle.fromJson(e)));
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
    getData();
    super.onInit();
  }
}
