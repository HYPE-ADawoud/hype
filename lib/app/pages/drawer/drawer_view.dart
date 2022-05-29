import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/pages/drawer/_widgets/drawer_item_view.dart';
import 'package:hype/app/pages/drawer/drawer_controller.dart';


class DrawerView extends GetView<DrawerViewController> {
  const DrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.current.background,
      child: SafeArea(
        child: Column(
          children: [
           _buildUserData(),
            SizedBox(height: AppDimens.paddingSize56.h,),
            _buildMenuList(context),
          ],
        ),
      ),
    );
  }

  Widget _buildUserData() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 15, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome", style: TextStyle(fontWeight: FontWeight.w800, fontSize: AppDimens.fontSizeLargeX, color: AppColors.current.text),),
          const SizedBox(height: 10,),
          Text("Ahmed Dawoud",style: TextStyle(fontWeight: FontWeight.w600, fontSize: AppDimens.fontSizeLarge, color: AppColors.current.text),),
        ],
      ),
    );
  }

  Expanded _buildMenuList(BuildContext context) {
    return Expanded(
      child: Obx(() {
        return ListView.separated(
          itemCount: controller.menuItems.length,
          separatorBuilder: (cxt, index)=> Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.paddingSize16),
            child: Divider(color: AppColors.current.text, height: 1,),
          ),
          itemBuilder: (cxt, index) => DrawerItemView(item: controller.menuItems[index]),
        );
      }),
    );
  }

}
