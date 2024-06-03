import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

import 'package:get/get.dart';
import 'package:managmentsh/data/models/tutorials_modle.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/class/state_raqust.dart';
import '../../../core/const/app_links.dart';

class ViewCourItemController extends GetxController {
  late TutorialsModle tutorialsModle;
  late StateRaqust stateRaqust;
  String remotePDFpath = '';
  late int currentPage;
  int? pages;
  bool? isRead;
  late int total;
  late Completer<PDFViewController> controllerPdf;
  late bool nightMode;

  Future<File> createFileOfPdfUrl() async {
    stateRaqust = StateRaqust.Laoding;
    update();
    Completer<File> completer = Completer();

    try {
      final url = "${AppLinkes.imagesServis}/${tutorialsModle.tutorialsFile!}";
      final filename = url.substring(url.lastIndexOf("/") + 1);
      var request = await HttpClient().getUrl(Uri.parse(url));
      var response = await request.close();
      var bytes = await consolidateHttpClientResponseBytes(response);
      var dir = await getApplicationDocumentsDirectory();

      File file = File("${dir.path}/$filename");

      await file.writeAsBytes(bytes, flush: true);
      completer.complete(file);
      stateRaqust = StateRaqust.succes;
    } catch (e) {
      stateRaqust = StateRaqust.fuler;
      throw Exception('Error parsing asset file!');
    }

    return completer.future;
  }

  changPage(int page, t) {
    currentPage = page;
    total = t;
    update();
  }

  changPagesAndRead(int? i) {
    pages = i;
    isRead = true;
    update();
  }

  changeMode() {
    nightMode = !nightMode;

    update();
  }

  @override
  void onInit() {
    tutorialsModle = Get.arguments['cour'];
    currentPage = 0;
    total = 1;
    controllerPdf = Completer<PDFViewController>();
    nightMode = false;

    createFileOfPdfUrl().then((f) {
      remotePDFpath = f.path;
      update();
    });

    super.onInit();
  }
}
