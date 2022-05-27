import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/managers/api/auth/_model/user_data.dart';
import 'package:hype/app/common/managers/cache/i_cache_manager.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/routes/app_pages.dart';
import 'package:hype/setup.dart';
import 'package:hype/utils/ui/dialog/dialog_helper.dart';

class SideMenuController extends GetxController {
  final menuItems = <MenuItemModel>[].obs;
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
    _userData.value =  cacheManager.getUserData()!;
  }

  void initMenuItems() {
    if(menuItems.isNotEmpty)menuItems.clear();

    menuItems.add(MenuItemModel(
        name: "Create new  task",
        iconPath: AppAssets.createIcon,
        onTap: () {}));

    menuItems.add(MenuItemModel(
        name: "One time project",
        iconPath: AppAssets.timeIcon,
        onTap: () {}));

    menuItems.add(MenuItemModel(
        name: "Completed task",
        iconPath: AppAssets.completeIcon,
        onTap: () {}));

    menuItems.add(MenuItemModel(
        name: "Account allocation",
        iconPath: AppAssets.accountIcon,
        onTap: () {}));

    menuItems.add(MenuItemModel(
        name: "Admin",
        iconPath: AppAssets.adminIcon,
        onTap: () {}));

    menuItems.add(MenuItemModel(
        name: "Clients",
        iconPath: AppAssets.clientIcon,
        onTap: () {}));

    menuItems.add(MenuItemModel(
        name: "Departments",
        iconPath: AppAssets.departmentIcon,
        onTap: () {}));

    menuItems.add(MenuItemModel(
        name: "Marketing",
        iconPath: AppAssets.marketingIcon,
        onTap: () {}));

    menuItems.add(MenuItemModel(
        name: "Pitches",
        iconPath: AppAssets.pitchesIcon,
        onTap: () {}));

    /// == Logout
    menuItems.add(MenuItemModel(
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

class MenuItemModel {
  String name;
  String? iconPath;
  VoidCallback onTap;
  bool? isExpandable;

  MenuItemModel({required this.name, this.iconPath, required this.onTap, this.isExpandable});
}
