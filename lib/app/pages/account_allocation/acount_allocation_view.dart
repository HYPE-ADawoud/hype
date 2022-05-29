import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/routes/app_pages.dart';
import 'package:hype/utils/ui/empty.dart';

class AccountAllocationView extends StatelessWidget {
  const AccountAllocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.current.neutral,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Column(
        children: [
          AppToolbar(
            title: 'Account Allocation',
            drawerCallBack: () {},
          ),
          _buildBodyView(),
        ],
      ),
    );
  }

  Widget _buildBodyView() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: AppColors.current.primary,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildSearch(),
              _buildItemAccountAllocation(),
              _buildDeleteButton(),
              _buildArchiveButton(),
              _buildLine(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearch() {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppDimens.paddingSize24,
          right: AppDimens.paddingSize24,
          top: AppDimens.paddingSize16,
          bottom: AppDimens.paddingSize24),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Client Name',
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

  Widget _buildItemAccountAllocation() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.paddingSize18,
          vertical: AppDimens.paddingSize24),
      child: Container(
        width: 339.w,
        height: 700.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColors.current.neutral),
        child: Stack(
          children: [
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildClient(
                      title: 'Client',
                      value: 'Culture Lab'
                  ),

                  _buildMarketingDepartment(
                      title: 'Marketing Department',
                      value: 'Mariam AGhaffar'
                  ),

                  _buildSecondary(
                      title: 'Secondary',
                      value: 'Mariam AGhaffar'
                  ),

                  _buildContent(
                      title: 'Content \ copy-write',
                      value: 'Culture Lab'
                  ),

                  _buildModerator(
                    title: 'Moderator',
                    value: 'Select Person',
                  ),
                  _buildArtsTeam(
                      title: 'Arts team',
                      value: 'Khaled Mohamed'
                  ),
                  _buildMotion(
                      title: 'Motion',
                      value: 'Menna Shousha'
                  ),
                  _buildVideoEditing(
                      title: 'Video Edititing',
                      value: 'Menna Shousha'
                  ),
                  _buildStatus(),
                ],
              ),
            _buildEditAccountAllocation(),
            _buildAddAccountAllocation(),

          ],
        ),
      ),
    );
  }

  Widget _buildClient({required String title,required String value}){
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal:AppDimens.paddingSize24,
      vertical:AppDimens.paddingSize5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:AppDimens.paddingSize10),
            child: Text(title,
            style: TextStyle(
              color: AppColors.current.primary,
              fontSize: AppDimens.fontSizeMediumX,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          Empty(height: 6.h,),
          Text(value,
            style: TextStyle(
              color: AppColors.current.dimmedXXXX,
              fontSize: AppDimens.fontSizeLarge,
              fontWeight: FontWeight.w400,
            ),
          ),
          Empty(height: 6.h,),
          Divider(
            height: 0.5,
            color: AppColors.current.dimmedXXXXX,
          ),
        ],
      ),
    );
  }
  Widget _buildMarketingDepartment({required String title,required String value}){
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal:AppDimens.paddingSize24,
          vertical:AppDimens.paddingSize5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
            style: TextStyle(
              color: AppColors.current.primary,
              fontSize: AppDimens.fontSizeMediumX,
              fontWeight: FontWeight.bold,
            ),
          ),
          Empty(height: 6.h,),
          Text(value,
            style: TextStyle(
              color: AppColors.current.dimmedXXXX,
              fontSize: AppDimens.fontSizeLarge,
              fontWeight: FontWeight.w400,
            ),
          ),
          Empty(height: 6.h,),
          Divider(
            height: 0.5,
            color: AppColors.current.dimmedXXXXX,
          ),
        ],
      ),
    );
  }
  Widget _buildSecondary({required String title,required String value}){
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal:AppDimens.paddingSize24,
          vertical:AppDimens.paddingSize5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
            style: TextStyle(
              color: AppColors.current.primary,
              fontSize: AppDimens.fontSizeMediumX,
              fontWeight: FontWeight.bold,
            ),
          ),
          Empty(height: 6.h,),
          Text(value,
            style: TextStyle(
              color: AppColors.current.dimmedXXXX,
              fontSize: AppDimens.fontSizeLarge,
              fontWeight: FontWeight.w400,
            ),
          ),
          Empty(height: 6.h,),
          Divider(
            height: 0.5,
            color: AppColors.current.dimmedXXXXX,
          ),
        ],
      ),
    );
  }
  Widget _buildContent({required String title,required String value}){
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal:AppDimens.paddingSize24,
          vertical:AppDimens.paddingSize5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
            style: TextStyle(
              color: AppColors.current.primary,
              fontSize: AppDimens.fontSizeMediumX,
              fontWeight: FontWeight.bold,
            ),
          ),
          Empty(height: 6.h,),
          Text(value,
            style: TextStyle(
              color: AppColors.current.dimmedXXXX,
              fontSize: AppDimens.fontSizeLarge,
              fontWeight: FontWeight.w400,
            ),
          ),
          Empty(height: 6.h,),
          Divider(
            height: 0.5,
            color: AppColors.current.dimmedXXXXX,
          ),
        ],
      ),
    );
  }
  Widget _buildModerator({required String title,required String value}){
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal:AppDimens.paddingSize24,
          vertical:AppDimens.paddingSize5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
            style: TextStyle(
              color: AppColors.current.primary,
              fontSize: AppDimens.fontSizeMediumX,
              fontWeight: FontWeight.bold,
            ),
          ),
          Empty(height: 6.h,),
          Text(value,
            style: TextStyle(
              color: AppColors.current.dimmedXXXX,
              fontSize: AppDimens.fontSizeLarge,
              fontWeight: FontWeight.w400,
            ),
          ),
          Empty(height: 6.h,),
          Divider(
            height: 0.5,
            color: AppColors.current.dimmedXXXXX,
          ),
        ],
      ),
    );
  }
  Widget _buildArtsTeam({required String title,required String value}){
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal:AppDimens.paddingSize24,
          vertical:AppDimens.paddingSize5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
            style: TextStyle(
              color: AppColors.current.primary,
              fontSize: AppDimens.fontSizeMediumX,
              fontWeight: FontWeight.bold,
            ),
          ),
          Empty(height: 6.h,),
          Text(value,
            style: TextStyle(
              color: AppColors.current.dimmedXXXX,
              fontSize: AppDimens.fontSizeLarge,
              fontWeight: FontWeight.w400,
            ),
          ),
          Empty(height: 6.h,),
          Divider(
            height: 0.5,
            color: AppColors.current.dimmedXXXXX,
          ),
        ],
      ),
    );
  }
  Widget _buildMotion({required String title,required String value}){
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal:AppDimens.paddingSize24,
          vertical:AppDimens.paddingSize5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
            style: TextStyle(
              color: AppColors.current.primary,
              fontSize: AppDimens.fontSizeMediumX,
              fontWeight: FontWeight.bold,
            ),
          ),
          Empty(height: 6.h,),
          Text(value,
            style: TextStyle(
              color: AppColors.current.dimmedXXXX,
              fontSize: AppDimens.fontSizeLarge,
              fontWeight: FontWeight.w400,
            ),
          ),
          Empty(height: 6.h,),
          Divider(
            height: 0.5,
            color: AppColors.current.dimmedXXXXX,
          ),
        ],
      ),
    );
  }
  Widget _buildVideoEditing({required String title,required String value}){
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal:AppDimens.paddingSize24,
          vertical:AppDimens.paddingSize5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
            style: TextStyle(
              color: AppColors.current.primary,
              fontSize: AppDimens.fontSizeMediumX,
              fontWeight: FontWeight.bold,
            ),
          ),
          Empty(height: 6.h,),
          Text(value,
            style: TextStyle(
              color: AppColors.current.dimmedXXXX,
              fontSize: AppDimens.fontSizeLarge,
              fontWeight: FontWeight.w400,
            ),
          ),
          Empty(height: 6.h,),
          Divider(
            height: 0.5,
            color: AppColors.current.dimmedXXXXX,
          ),
        ],
      ),
    );
  }
  Widget _buildStatus(){
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal:AppDimens.paddingSize24,
          vertical:AppDimens.paddingSize5),
      child: Text('Status',
        style: TextStyle(
          color: AppColors.current.primary,
          fontSize: AppDimens.fontSizeMediumX,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
Widget _buildEditAccountAllocation(){
    return AlignPositioned(
      child: Container(
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
          onTap: ()=>Get.toNamed(Routes.EDIT_ACCOUNT_ALLOCATION),
          child: SvgPicture.asset(
            AppAssets.completeRedIcon,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      alignment: Alignment.topRight,
      touch: Touch.inside,
      dx: 16.0, // Move 4 pixels to the right.
      moveByChildWidth: 0, // Move half child width to the left.
      moveByChildHeight: -0.3,
    );
}

Widget _buildAddAccountAllocation(){
    return   AlignPositioned(
      child: Container(
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
      ),
      alignment: Alignment.centerRight,
      touch: Touch.inside,
      dx: 16.0, // Move 4 pixels to the right.
      moveByChildWidth: 0, // Move half child width to the left.
      moveByChildHeight: 3.5,
    );
}
  Widget _buildDeleteButton() {
    return Padding(
      padding: const EdgeInsets.only(
          top: AppDimens.paddingSize16,
      bottom: AppDimens.paddingSize12,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppDimens.borderRadiusOuter
          ),
          border: Border.all(
            width: 1,
            color: AppColors.current.neutral
          )
        ),
        width: 324.w,
        height: 60.h,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: AppColors.current.primary,
          ),
          onPressed: () {},
          child: Text(
            'Delete',
            style: TextStyle(
                fontSize: AppDimens.fontSizeMediumX,
                color: AppColors.current.neutral,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
  Widget _buildArchiveButton() {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppDimens.paddingSize8,
        bottom: 100,
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                AppDimens.borderRadiusOuter
            ),
            border: Border.all(
                width: 1,
                color: AppColors.current.dimmed
            )
        ),
        width: 324.w,
        height: 60.h,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: AppColors.current.dimmedX,
          ),
          onPressed: () {},
          child: Text(
            'Archive',
            style: TextStyle(
                fontSize: AppDimens.fontSizeMediumX,
                color: AppColors.current.neutral,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
  Widget _buildLine() {
    return Padding(
      padding: EdgeInsets.only(right: 120.w, left: 120.w, bottom: 10.h),
      child: Container(
        height: 5.h,
        width: 135.w,
        decoration: BoxDecoration(
          color: AppColors.current.text,
          borderRadius: BorderRadius.circular(AppDimens.borderRadiusLine),
        ),
      ),
    );
  }
}
