import 'package:flutter/material.dart';
import 'package:managmentsh/core/const/app_colors.dart';

class CustemRowWidget extends StatelessWidget {
  final String quation;
  final String answer;

  const CustemRowWidget(
      {super.key, required this.quation, required this.answer});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          quation,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          answer,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.primarycolor),
        )
      ],
    );
  }
}
