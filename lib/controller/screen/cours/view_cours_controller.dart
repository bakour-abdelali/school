import 'dart:io';

import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:get/get.dart';
import 'package:managmentsh/core/class/state_raqust.dart';
import 'package:managmentsh/core/class/stautus.dart';
import 'package:managmentsh/core/const/app_routes.dart';
import 'package:managmentsh/core/funcion/alert_not_cox.dart';
import 'package:managmentsh/core/funcion/head_data.dart';
import 'package:managmentsh/data/models/cour_modle.dart';
import 'package:managmentsh/data/remot/screen/cour_data.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/const/app_links.dart';
import '../../../data/models/tutorials_modle.dart';

class ViewCoursController extends GetxController {
  List<TutorialsModle> modles = [];
  late CourModel modle;
  late StateRaqust stateRaqust;
  final CourData _data = CourData(Get.find());
  getData() async {
    stateRaqust = StateRaqust.Laoding;
    update();
    var respones = await _data.getToutarules(modle.coursId!);
    stateRaqust = headData(respones);
    if (stateRaqust == StateRaqust.succes) {
      if (respones[AppStatus.status] == AppStatus.sucsess) {
        List list = respones['data'];
        modles.addAll(list.map((e) => TutorialsModle.fromJson(e)));
        list.clear();
      } else if (respones[AppStatus.status] == AppStatus.failure) {
        stateRaqust = StateRaqust.fuler;
      }
    } else {
      noIntrnat();
    }
    update();
  }

  void goToTaturiles(TutorialsModle t) {
    Get.toNamed(AppRoutes.viewItemCourScreen, arguments: {"cour": t});
  }

  Future<void> downloadFile(TutorialsModle tutorialsModle) async {
    Directory? downloadsDir = await getDownloadsDirectory();
    String directory = downloadsDir!.path; // مسار مجلد التنزيلات

    String savedDir = '$directory/cours'; // مسار مجلد التنزيلات الخاص بك

    // التحقق من وجود الدليل وإنشاؤه إذا لم يكن موجودًا
    if (!await Directory(savedDir).exists()) {
      await Directory(savedDir).create(recursive: true);
    }

    await FlutterDownloader.enqueue(
      url: '${AppLinkes.imagesServis}/${tutorialsModle.tutorialsFile!}',
      savedDir: savedDir,
      fileName: tutorialsModle.tutorialsTitle!,
      showNotification: true,
      openFileFromNotification: true,
    );
  }

  @override
  void onInit() {
    modle = Get.arguments['modle']; //modle
    getData();
    super.onInit();
  }
}
