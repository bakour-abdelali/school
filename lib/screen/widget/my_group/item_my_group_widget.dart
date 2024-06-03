import 'package:flutter/material.dart';
import 'package:managmentsh/data/models/my_group_modle.dart';
import 'package:managmentsh/screen/widget/subscription/custem_row_widget.dart';

import '../../../core/const/app_colors.dart';

class ItemMyGroupWidget extends StatelessWidget {
  final MyGroupModle model;

  const ItemMyGroupWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.whithe,
        //
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 6,
          ),
        ],
      ),
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      // height: 150,
      child: Column(
        children: [
          CustemRowWidget(
            quation: 'اسم المادة : ',
            answer: model.coursName!,
          ),
          CustemRowWidget(
            quation: 'مستوى المادة',
            answer: model.coursLevel!,
          ),
          CustemRowWidget(
            quation: 'شعبة',
            answer: model.coursSection!,
          ),
          CustemRowWidget(
            quation: 'أستاذ',
            answer: "${model.teacherLname} ${model.teacherFname}",
          ),
          CustemRowWidget(
            quation: "اسم الفوج",
            answer: model.lessonName!,
          ),
          CustemRowWidget(
            quation: 'سعر الأشتراك القادم',
            answer: model.coursPrice!,
          ),
        ],
      ),
    );
  }
}
