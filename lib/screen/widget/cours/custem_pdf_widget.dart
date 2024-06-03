import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';

import '../../../controller/screen/cours/view_cour_Item_controller.dart';

class CustemPdfWIdget extends GetView<ViewCourItemController> {
  const CustemPdfWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return PDFView(
      filePath: controller.remotePDFpath,
      enableSwipe: true,
      swipeHorizontal: true,
      autoSpacing: false,
      pageFling: true,
      pageSnap: true,
      nightMode: controller.nightMode,
      defaultPage: controller.currentPage,
      fitPolicy: FitPolicy.BOTH,
      preventLinkNavigation: false,
      onRender: (pages) {
        controller.changPagesAndRead(pages);
      },
      onError: (error) {},
      onPageError: (page, error) {},
      onViewCreated: (PDFViewController pdfViewController) {
        controller.controllerPdf.complete(pdfViewController);
      },
      onLinkHandler: (String? uri) {},
      onPageChanged: (int? page, int? total) {
        controller.changPage(page!, total);
      },
    );
  }
}
