import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/dashboard/_widgets/member_task_items.dart';
import 'package:hype/app/pages/dashboard/_widgets/platform_traffic_items.dart';
import 'package:hype/app/pages/dashboard/_widgets/top_client_items.dart';
import 'package:hype/app/pages/dashboard/dashboard_controller.dart';
import 'package:hype/app/pages/drawer/drawer_view.dart';


class DashboardView extends StatelessWidget {
  DashboardController controller = Get.find();
  final scaffoldKey = GlobalKey<ScaffoldState>();
   DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.current.neutral,
      drawer: const DrawerView(),
      body: _buildBody(),
    );
  }
  Widget _buildBody() {
    return SafeArea(
      child: Column(
        children: [
          AppToolbar(
            drawerCallBack: () => scaffoldKey.currentState?.openDrawer(),
            title: 'Dashboard',
            actions: IconButton(onPressed: () {}, icon: SvgPicture.asset(AppAssets.searchIcon)),
          ),
          _buildBodyView(),
        ],
      ),
    );
  }

  Widget _buildBodyView() {
    return Expanded(
      child: Container(
        color: AppColors.current.primary,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTopClient(),
              _buildPlatformsTraffic(),
              _buildMemberTasks(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopClient(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.current.neutral,
          borderRadius: BorderRadius.circular(AppDimens.paddingSize16)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             _buildTitle(title: 'Top Client'),
            _buildContentName(),
            _buildTopClientItem(),
          ],
        ),
      ),
    );
  }
  Widget _buildTitle({required String title}){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(title,
      style: TextStyle(
        fontSize: AppDimens.fontSizeLarge,
        fontWeight: FontWeight.w700,
        color: AppColors.current.primary
      ),
      ),
    );
  }
  Widget _buildContentName(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDimens.paddingSize8),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppDimens.paddingSize8,
        horizontal: AppDimens.paddingSize8),
        decoration: BoxDecoration(
          color: AppColors.current.primary,
          borderRadius: BorderRadius.circular(AppDimens.borderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildName(contentName: 'Name'),
            _buildName(contentName: 'Time Spent'),
            _buildName(contentName: 'Tasks'),
          ],
        ),
      ),
    );
  }
  Widget _buildName({required String contentName}){
    return Text(contentName,
      style: TextStyle(
          fontSize: AppDimens.fontSizeMedium,
          fontWeight: FontWeight.w600,
          color: AppColors.current.text
      ),
    );
  }
  Widget _buildTopClientItem(){
    return ListView.separated(
        separatorBuilder: (context,index)=>Divider(
          height: 0.5,
          color: AppColors.current.dimmedXXXXX,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount:controller.topClients.length,
        itemBuilder: (context,index){
          return TopClientItems(
              topClient: controller.topClients[index]);
        });
  }

  /// part 2
  Widget _buildPlatformsTraffic(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: AppColors.current.neutral,
            borderRadius: BorderRadius.circular(AppDimens.paddingSize16)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(title: 'Platforms Traffic'),
            _buildPlatformsTrafficItem(),
          ],
        ),
      ),
    );
  }
  Widget _buildPlatformsTrafficItem(){
    return ListView.separated(
        separatorBuilder: (context,index)=>Divider(
          height: 0.5,
          color: AppColors.current.dimmedXXXXX,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount:controller.platformTraffic.length,
        itemBuilder: (context,index){
          return PlatformTrafficItems(
              platformsTraffic: controller.platformTraffic[index]);
        });
  }

  //// part 3
  Widget _buildMemberTasks(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: AppColors.current.neutral,
            borderRadius: BorderRadius.circular(AppDimens.paddingSize16)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(title: 'Member Tasks'),
            _buildMemberTaskItem(),
          ],
        ),
      ),
    );
  }

  Widget _buildMemberTaskItem(){
    return ListView.separated(
        separatorBuilder: (context,index)=>Divider(
          height: 0.5,
          color: AppColors.current.dimmedXXXXX,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount:controller.membersTask.length,
        itemBuilder: (context,index){
          return MemberTaskItems(
              memberTask: controller.membersTask[index]);
        });
  }

}

