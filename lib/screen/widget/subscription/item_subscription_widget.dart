import 'package:flutter/material.dart';
import 'package:managmentsh/data/models/cour_modle.dart';
import 'package:managmentsh/screen/widget/subscription/custem_row_widget.dart';

import '../../../core/const/app_colors.dart';

class ItemSubscriptionWidget extends StatelessWidget {
  final CourModel model;

  const ItemSubscriptionWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
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
            quation: 'عدد الأشتراكات',
            answer: model.subscriptionCount!,
          ),
          CustemRowWidget(
            quation: "تاريخ الأشتراك ",
            answer: model.subscriptionDateCreat!,
          ),
          CustemRowWidget(
            quation: ' تاريخ الأنتهاء الأشتراك الحالي',
            answer: model.subscriptionExpiryDate!,
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
