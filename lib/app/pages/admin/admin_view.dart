import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/admin/_widgets/build_content_item_brief.dart';
import 'package:hype/app/pages/admin/_widgets/build_content_item_user.dart';
import 'package:hype/app/pages/admin/admin_controller.dart';
import 'package:hype/app/pages/drawer/drawer_view.dart';
import 'package:hype/app/routes/app_pages.dart';

import '../../../utils/ui/empty.dart';

class AdminView extends StatelessWidget {
  AdminController controller = Get.find();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  AdminView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return DefaultTabController(
        length: controller.selectedIndex.value,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: AppColors.current.neutral,
          drawer: const DrawerView(),
          body: _buildBody(),
        ),
      );
    });
  }

  Widget _buildBody() {
    return SafeArea(
      child: Column(
        children: [
          AppToolbar(
            title: 'Admin',
            drawerCallBack: () => scaffoldKey.currentState?.openDrawer(),
            actions: IconButton(onPressed: () {}, icon: SvgPicture.asset(AppAssets.searchIcon)),
          ),
          _buildViewBody(),
        ],
      ),
    );
  }

  Widget _buildViewBody() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: AppColors.current.primary,
        child: Column(
          children: [
            _buildTabs(),
            _buildContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildTabs() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 36),
      child: Container(
        width: 320.w,
        height: 30.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.borderRadius,),
          color: AppColors.current.neutral,
        ),
        padding: const EdgeInsets.all(2),
        child: TabBar(
          controller: controller.tabController,
          onTap: (index) => controller.onTabClick(index),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppDimens.borderRadius,
            ),
            color: AppColors.current.primary,
          ),
          labelColor: AppColors.current.neutral,
          unselectedLabelColor: AppColors.current.primary,
          tabs: [
             _buildTabUser(),
            _buildTabBrief(),
          ],
        ),
      ),
    );
  }

  Widget _buildTabUser() {
    return Tab(
      child: Text(
        'Users',
        style: TextStyle(
          fontSize: AppDimens.fontSizeMedium,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget _buildTabBrief() {
    return Tab(
      child: Text(
        'Brief Types',
        style: TextStyle(
          fontSize: AppDimens.fontSizeMedium,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Expanded(
      child: TabBarView(
          controller: controller.tabController,
          children: [
            _buildContentUser(),
            _buildContentBrief(),
      ]),
    );
  }

  Widget _buildContentUser(){
    return ListView.builder(
      itemCount: controller.users.length,
      itemBuilder: (context, index) {
        return ContentItemUser(user: controller.users[index],);
      },
    );
  }

  Widget _buildContentBrief(){
    return ListView.builder(
      itemCount: controller.briefs.length,
      itemBuilder: (context, index) {
        return ContentItemBrief(brief: controller.briefs[index],);
      },
    );
  }
}
