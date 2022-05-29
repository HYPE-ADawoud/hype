import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/pages/home/home_view.dart';
import 'package:hype/app/pages/notification/notification_view.dart';
import 'package:hype/app/pages/profile/profile_view.dart';

import 'main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
        bottomNavigationBar: _buildBottomNavigationBar()
    );
  }

  Widget get _buildBody => PageView(
    controller: controller.pageViewController,
    children: [
    HomeView(),
    ProfileView(),
    NotificationView(),
  ],);

  Widget _buildBottomNavigationBar() {
    return Obx(() {
      final int selectedIndex = controller.selectedBottomNavBarIndex.value;
      final selectedColor = AppColors.current.primary;
      final unSelectedColor = AppColors.current.dimmedXXX;

      return BottomNavigationBar(
          onTap: (index) => controller.onBottomNavBarChanged(index: index),
          currentIndex: selectedIndex,
          selectedItemColor: selectedColor,
          unselectedItemColor: unSelectedColor,
          selectedLabelStyle: TextStyle(fontSize: AppDimens.fontSizeSmallX),
          unselectedLabelStyle: TextStyle(fontSize: AppDimens.fontSizeSmallX),
          items: [
            _buildBottomNavBarItem('Home', AppAssets.homeIcon, selectedIndex == 0 ? selectedColor: unSelectedColor),
            _buildBottomNavBarItem('Profile', AppAssets.profileIcon, selectedIndex == 1 ? selectedColor: unSelectedColor),
            _buildBottomNavBarItem('Notifications', AppAssets.notificationIcon, selectedIndex == 2 ? selectedColor: unSelectedColor),
          ]);
    });
  }

  BottomNavigationBarItem _buildBottomNavBarItem(String title, String iconPath, Color color) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: AppDimens.paddingSize8),
        child: SvgPicture.asset(iconPath, color: color,),
      ),
      label: title,
    );
  }
}
