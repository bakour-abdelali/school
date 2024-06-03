import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:managmentsh/core/const/app_colors.dart';

import '../../../../controller/screen/cours/view_cour_Item_controller.dart';
import '../../../widget/cours/custem_pdf_widget.dart';

class ViewItemCourScreen extends StatelessWidget {
  const ViewItemCourScreen({super.key}); // رابط PDF من الإنترنت

  @override
  Widget build(BuildContext context) {
    ViewCourItemController cotroller = Get.put(ViewCourItemController());
    // String pdfUrl =
    //     "${AppLinkes.imagesServis}/2668كراس%20الدوال%20العددية%20من%20الالف%20الى%20الياء.pdf";

    return Scaffold(
        appBar: AppBar(
          title: Text(cotroller.tutorialsModle.tutorialsTitle!),
        ),
        floatingActionButton: GetBuilder<ViewCourItemController>(
            builder: (controller) => FloatingActionButton.extended(
                  label:
                      Text("${controller.currentPage + 1}/${controller.total}"),
                  onPressed: () {},
                )),
        body: GetBuilder<ViewCourItemController>(
          builder: (controller) {
            if (controller.remotePDFpath.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primarycolor,
                ),
              );
            } else {
              return const CustemPdfWIdget();
            }
          },
        ));
  }
}
