import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/account_allocation_home/_widgets/account_allocation_items.dart';
import 'package:hype/app/pages/account_allocation_home/main_acount_allocation_controller.dart';
import 'package:hype/app/pages/drawer/drawer_view.dart';
import 'package:hype/app/routes/app_pages.dart';


class MainAccountAllocationView extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final MainAccountAllocationController controller = Get.find();
   MainAccountAllocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const DrawerView(),
      backgroundColor: AppColors.current.neutral,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppToolbar(
            title: 'Account Allocation',
            drawerCallBack: () => scaffoldKey.currentState?.openDrawer(),
            actions: _buildAddAccountAllocation(),
          ),
          _buildBodyView(),
        ],
      ),
    );
  }
  Widget _buildAddAccountAllocation(){
    return   Container(
      width: 36.w,
      height: 36.h,
      decoration: BoxDecoration(
        color: AppColors.current.neutral,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AppColors.current.dimmedX,
            offset: const Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: InkWell(
        onTap: ()=>Get.toNamed(Routes.ADD_ACCOUNT_ALLOCATION),
        child: SvgPicture.asset(
          AppAssets.plusIcon,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
  Widget _buildBodyView() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: AppColors.current.primary,
        child: Column(
          children: [
            _buildSearch(),
            _buildContent(),
          ],
        ),
      ),
    );
  }
  Widget _buildSearch() {
    return Padding(
      padding: const EdgeInsets.only(
          left:  AppDimens.paddingSize24,
          right:  AppDimens.paddingSize24,
          top:  AppDimens.paddingSize16,
          bottom:  AppDimens.paddingSize24),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: SvgPicture.asset(AppAssets.searchIcon,
          fit: BoxFit.scaleDown),
          hintText: 'Client name',
            hintStyle: TextStyle(
              color: AppColors.current.dimmedX
            ),
            filled: true,
            fillColor: AppColors.current.dimmedLightX,
          focusColor: AppColors.current.dimmedLightX,
        ),
      ),
    );
  }
  Widget _buildContent(){
    return Expanded(
      child: ListView.builder(
          itemCount: controller.accounts.length,
          itemBuilder: (context,index){
            return AccountAllocationItem(account: controller.accounts[index]);
          }),
    );
  }
}
