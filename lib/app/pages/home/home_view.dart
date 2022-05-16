import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/home/home_controller.dart';
import 'package:hype/app/pages/side_menu/side_menu_view.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const SideMenuView(),
      backgroundColor: AppColors.current.neutral,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          /// toolbar.
          _buildToolbar(),
          _buildBodyView(),
        ],
      ),
    );
  }

  AppToolbar _buildToolbar() {
    return AppToolbar(
      title: 'Home View',
      drawerCallBack: () => scaffoldKey.currentState?.openDrawer(),
    );
  }

  Widget _buildBodyView() {
    return Stack(
      children: [
        
      ],
    );
  }

}
