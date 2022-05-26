import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/managers/api/auth/_model/user_data.dart';
import 'package:hype/app/common/managers/cache/i_cache_manager.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/routes/app_pages.dart';
import 'package:hype/setup.dart';
import 'package:hype/utils/ui/dialog/dialog_helper.dart';

class DrawerViewController extends GetxController {
  final menuItems = <DrawerItemModel>[].obs;
  final cacheManager = DI.find<ICacheManager>();
  final _userData = UserData().obs;
  var honorFilesExpanded = false.obs;

  UserData? get userData => _userData.value;

  @override
  Future<void> onInit() async {
    super.onInit();
    //
       await _getUserData();
    //
    initMenuItems();
  }

  Future<void> _getUserData() async {
    await cacheManager.init();
    if(cacheManager.getUserData()!=null) _userData.value =  cacheManager.getUserData()!;
  }

  void initMenuItems() {
    if(menuItems.isNotEmpty)menuItems.clear();

    menuItems.add(DrawerItemModel(
        name: "Create new  task",
        iconPath: AppAssets.createIcon,
        onTap: () {}));

    menuItems.add(DrawerItemModel(
        name: "Account allocation",
        iconPath: AppAssets.accountIcon,
        onTap: () {}));

    menuItems.add(DrawerItemModel(
        name: "Dashboard",
        iconPath: AppAssets.dashboardIcon,
        onTap: () {}));

    menuItems.add(DrawerItemModel(
        name: "Admin",
        iconPath: AppAssets.adminIcon,
        onTap: () {}));

    menuItems.add(DrawerItemModel(
        name: "Clients",
        iconPath: AppAssets.clientIcon,
        onTap: () {}));

    menuItems.add(DrawerItemModel(
        name: "Departments",
        iconPath: AppAssets.departmentIcon,
        onTap: () {}));

    /// == Logout
    menuItems.add(DrawerItemModel(
        name: "Logout",
        iconPath: AppAssets.logoutIcon,
        onTap: () async {
          final result = await DialogHelper.showActionDialog(
              yesText: 'YES',
              noText: 'NO',
              title: 'Attention',
              subTitle: 'Are you sure you want tot logout?',
              yesColor: AppColors.current.accent,
              noColor: AppColors.current.primary,
          );
          if (result ?? false) {
            /// remove cached user data
            cacheManager.logout();
            /// go back to setup page
            Get.offAndToNamed(Routes.SPLASH_VIEW);
          }
        }));
    menuItems.refresh();
  }
}

class DrawerItemModel {
  String name;
  String? iconPath;
  VoidCallback onTap;
  bool? isExpandable;

  DrawerItemModel({required this.name, this.iconPath, required this.onTap, this.isExpandable});
}
