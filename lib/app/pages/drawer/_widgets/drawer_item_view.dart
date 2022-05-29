import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/pages/drawer/drawer_controller.dart';

class DrawerItemView extends StatelessWidget {
  final DrawerItemModel item;
  const DrawerItemView({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      horizontalTitleGap: 0,
      title: Text(item.name, style: TextStyle(fontSize: AppDimens.fontSizeMediumXX, color: AppColors.current.text)),
      leading: SizedBox(
          width: 24.w,
          height: 24.h,
          child: SvgPicture.asset(item.iconPath ?? '', color: AppColors.current.text,)),
      onTap: () {
        if (item.isExpandable == null || item.isExpandable == false) Get.back();
        item.onTap();
      },
    );
  }
}
