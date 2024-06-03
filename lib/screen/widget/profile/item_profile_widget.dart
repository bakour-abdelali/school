import 'package:flutter/material.dart';

import '../../../controller/screen/profile/view_profile_controller.dart';
import '../../../core/const/app_colors.dart';

class ItemProfileWidget extends StatelessWidget {
  final ItemProfile itemProfile;
  const ItemProfileWidget({super.key, required this.itemProfile});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: itemProfile.onTap,
      child: Container(
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
        child: ListTile(
          leading: Icon(
            itemProfile.iconData,
            color: Colors.black54,
          ),
          title: Text(
            itemProfile.taitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
