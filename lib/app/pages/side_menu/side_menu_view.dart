import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_colors.dart';

import 'side_menu_controller.dart';

class SideMenuView extends GetView<SideMenuController> {
  const SideMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.current.neutral,
      child: SafeArea(
        child: Column(
          children: [
            _buildUserData(),

            Divider(color: AppColors.current.accentLight,),

            _buildMenuList(context),
          ],
        ),
      ),
    );
  }

  Obx _buildUserData() {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 15, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome", style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.textTheme.headline2?.fontSize),),
            const SizedBox(height: 10,),
            const Text("Ahmed Dawoud"),
          ],
        ),
      );
    });
  }

  Expanded _buildMenuList(BuildContext context) {
    return Expanded(
      child: Obx(() {
        return ListView(
          padding: EdgeInsets.zero,
          children: controller.menuItems.map((item) => _buildMenuItem(context, item)).toList(),
        );
      }),
    );
  }

  Widget _buildMenuItem(BuildContext context, MenuItemModel item) {
    if (!controller.honorFilesExpanded.value && item.iconPath == null) return const SizedBox();
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      horizontalTitleGap: 0,
      onTap: () {
        if (item.isExpandable == null || item.isExpandable == false) Get.back();
        item.onTap();
      },
      title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: item.iconPath == null ? AppColors.current.dimmed.withOpacity(0.1) : AppColors.current.transparent),
          child: Text(item.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: Get.textTheme.headline4?.fontSize))),
      leading: item.iconPath == null ? const SizedBox() : SvgPicture.asset(item.iconPath??'', color: AppColors.current.accent,),
      trailing: item.isExpandable ?? false ?  Icon(controller.honorFilesExpanded.value ? CupertinoIcons.chevron_up: CupertinoIcons.chevron_down) : const SizedBox(),
    );
  }
}
