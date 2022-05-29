import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/account_allocation_edit/edit_acount_allocation_controller.dart';

class EditAccountAllocationView extends StatelessWidget {
  final EditAccountAllocationController controller = Get.find();
  EditAccountAllocationView({Key? key}) : super(key: key);

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
            backCallBack: () {},
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
              _buildClient(),
              _buildSubmitButton(),
              _buildLine(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildClient() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(vertical: 13.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(title: 'Client',),
            _buildDropdownClient(),
            _buildTitle(title: 'Marketing Department',),
            _buildDropdownMarketingDepartment(),
            _buildTitle(title: 'Secondary',),
            _buildDropdownSecondary(),
            _buildTitle(title: 'Content \ copy-write',),
            _buildDropdownContentCopyWrite(),
            _buildTitle(title: 'Moderator',),
            _buildDropdownModerator(),
            _buildTitle(title: 'Arts team',),
            _buildDropdownArtsTeam(),
            _buildTitle(title: 'Motion',),
            _buildDropdownMotion(),
            _buildTitle(title: 'Video Editing',),
            _buildDropdownVideoEditing(),
            _buildTitle(title: 'Status',),
            _buildDropdownStatus(),
          ],
        ),
      ),
    );
  }
  Widget _buildTitle({required String title}){
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppDimens.paddingSize8
      ),
      child: Text(title,style: TextStyle(
        fontWeight: FontWeight.w300,
        color: AppColors.current.text,
        fontSize: 16.sp,
      ),),
    );
  }
  Widget _buildDropdownClient(){
    return Container(
      width: 339.w,
      height: 44.h,
      decoration:
      BoxDecoration(
          color: AppColors.current.dimmedLightXX,
          borderRadius: BorderRadius.circular(AppDimens.borderRadius)),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            // Initial status Value
            value: controller.dropDownClientValue.value,
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.current.primary,
              size: 30.h,
            ),
            // list of status items
            items: controller.itemsClient.map((String items) {
              return DropdownMenuItem(
                alignment: Alignment.center,
                value: items,
                child: Text(
                  items,
                  style: TextStyle(
                      color: AppColors.current.dimmedXXXX,
                      fontWeight: FontWeight.w600,
                      fontSize: AppDimens.fontSizeMedium.sp),
                ),
              );
            }).toList(),
            onChanged: (newValue) => controller.setSelectedClient(newValue),
          ),
        ),
      ),
    );
  }
  Widget _buildDropdownMarketingDepartment(){
    return Container(
      width: 339.w,
      height: 44.h,
      decoration:
      BoxDecoration(
          color: AppColors.current.dimmedLightXX,
          borderRadius: BorderRadius.circular(AppDimens.borderRadius)),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            // Initial status Value
            value: controller.dropDownMarketingDepartmentValue.value,
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.current.primary,
              size: 30.h,
            ),
            // list of status items
            items: controller.itemsMarketingDepartment.map((String items) {
              return DropdownMenuItem(
                alignment: Alignment.center,
                value: items,
                child: Text(
                  items,
                  style: TextStyle(
                      color: AppColors.current.dimmedXXXX,
                      fontWeight: FontWeight.w600,
                      fontSize: AppDimens.fontSizeMedium.sp),
                ),
              );
            }).toList(),
            onChanged: (newValue) => controller.setSelectedMarketingDepartment(newValue),
          ),
        ),
      ),
    );
  }
  Widget _buildDropdownSecondary(){
    return Container(
      width: 339.w,
      height: 44.h,
      decoration:
      BoxDecoration(
          color: AppColors.current.dimmedLightXX,
          borderRadius: BorderRadius.circular(AppDimens.borderRadius)),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            // Initial status Value
            value: controller.dropDownSecondaryValue.value,
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.current.primary,
              size: 30.h,
            ),
            // list of status items
            items: controller.itemsSecondary.map((String items) {
              return DropdownMenuItem(
                alignment: Alignment.center,
                value: items,
                child: Text(
                  items,
                  style: TextStyle(
                      color: AppColors.current.dimmedXXXX,
                      fontWeight: FontWeight.w600,
                      fontSize: AppDimens.fontSizeMedium.sp),
                ),
              );
            }).toList(),
            onChanged: (newValue) => controller.setSelectedSecondary(newValue),
          ),
        ),
      ),
    );
  }
  Widget _buildDropdownContentCopyWrite(){
    return Container(
      width: 339.w,
      height: 44.h,
      decoration:
      BoxDecoration(
          color: AppColors.current.dimmedLightXX,
          borderRadius: BorderRadius.circular(AppDimens.borderRadius)),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            // Initial status Value
            value: controller.dropDownContentCopyWriteValue.value,
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.current.primary,
              size: 30.h,
            ),
            // list of status items
            items: controller.itemsContentCopyWrite.map((String items) {
              return DropdownMenuItem(
                alignment: Alignment.center,
                value: items,
                child: Text(
                  items,
                  style: TextStyle(
                      color: AppColors.current.dimmedXXXX,
                      fontWeight: FontWeight.w600,
                      fontSize: AppDimens.fontSizeMedium.sp),
                ),
              );
            }).toList(),
            onChanged: (newValue) => controller.setSelectedContentCopyWrite(newValue),
          ),
        ),
      ),
    );
  }
  Widget _buildDropdownModerator(){
    return Container(
      width: 339.w,
      height: 44.h,
      decoration:
      BoxDecoration(
          color: AppColors.current.dimmedLightXX,
          borderRadius: BorderRadius.circular(AppDimens.borderRadius)),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            // Initial status Value
            value: controller.dropDownModeratorValue.value,
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.current.primary,
              size: 30.h,
            ),
            // list of status items
            items: controller.itemsModerator.map((String items) {
              return DropdownMenuItem(
                alignment: Alignment.center,
                value: items,
                child: Text(
                  items,
                  style: TextStyle(
                      color: AppColors.current.dimmedXXXX,
                      fontWeight: FontWeight.w600,
                      fontSize: AppDimens.fontSizeMedium.sp),
                ),
              );
            }).toList(),
            onChanged: (newValue) => controller.setSelectedModerator(newValue),
          ),
        ),
      ),
    );
  }
  Widget _buildDropdownArtsTeam(){
    return Container(
      width: 339.w,
      height: 44.h,
      decoration:
      BoxDecoration(
          color: AppColors.current.dimmedLightXX,
          borderRadius: BorderRadius.circular(AppDimens.borderRadius)),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            // Initial status Value
            value: controller.dropDownArtsTeamValue.value,
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.current.primary,
              size: 30.h,
            ),
            // list of status items
            items: controller.itemsArtsTeam.map((String items) {
              return DropdownMenuItem(
                alignment: Alignment.center,
                value: items,
                child: Text(
                  items,
                  style: TextStyle(
                      color: AppColors.current.dimmedXXXX,
                      fontWeight: FontWeight.w600,
                      fontSize: AppDimens.fontSizeMedium.sp),
                ),
              );
            }).toList(),
            onChanged: (newValue) => controller.setSelectedArtsTeam(newValue),
          ),
        ),
      ),
    );
  }
  Widget _buildDropdownMotion(){
    return Container(
      width: 339.w,
      height: 44.h,
      decoration:
      BoxDecoration(
          color: AppColors.current.dimmedLightXX,
          borderRadius: BorderRadius.circular(AppDimens.borderRadius)),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            // Initial status Value
            value: controller.dropDownMotionValue.value,
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.current.primary,
              size: 30.h,
            ),
            // list of status items
            items: controller.itemsMotion.map((String items) {
              return DropdownMenuItem(
                alignment: Alignment.center,
                value: items,
                child: Text(
                  items,
                  style: TextStyle(
                      color: AppColors.current.dimmedXXXX,
                      fontWeight: FontWeight.w600,
                      fontSize: AppDimens.fontSizeMedium.sp),
                ),
              );
            }).toList(),
            onChanged: (newValue) => controller.setSelectedMotion(newValue),
          ),
        ),
      ),
    );
  }
  Widget _buildDropdownVideoEditing(){
    return Container(
      width: 339.w,
      height: 44.h,
      decoration:
      BoxDecoration(
          color: AppColors.current.dimmedLightXX,
          borderRadius: BorderRadius.circular(AppDimens.borderRadius)),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            // Initial status Value
            value: controller.dropDownVideoEditingValue.value,
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.current.primary,
              size: 30.h,
            ),
            // list of status items
            items: controller.itemsVideoEditing.map((String items) {
              return DropdownMenuItem(
                alignment: Alignment.center,
                value: items,
                child: Text(
                  items,
                  style: TextStyle(
                      color: AppColors.current.dimmedXXXX,
                      fontWeight: FontWeight.w600,
                      fontSize: AppDimens.fontSizeMedium.sp),
                ),
              );
            }).toList(),
            onChanged: (newValue) => controller.setSelectedVideoEditing(newValue),
          ),
        ),
      ),
    );
  }
  Widget _buildDropdownStatus(){
    return Container(
      width: 339.w,
      height: 44.h,
      decoration:
      BoxDecoration(
          color: AppColors.current.dimmedLightXX,
          borderRadius: BorderRadius.circular(AppDimens.borderRadius)),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            // Initial status Value
            value: controller.dropDownStatusValue.value,
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.current.primary,
              size: 30.h,
            ),
            // list of status items
            items: controller.itemsStatus.map((String items) {
              return DropdownMenuItem(
                alignment: Alignment.center,
                value: items,
                child: Text(
                  items,
                  style: TextStyle(
                      color: AppColors.current.dimmedXXXX,
                      fontWeight: FontWeight.w600,
                      fontSize: AppDimens.fontSizeMedium.sp),
                ),
              );
            }).toList(),
            onChanged: (newValue) => controller.setSelectedStatus(newValue),
          ),
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
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

        ),
        width: 324.w,
        height: 60.h,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: AppColors.current.primaryX,
          ),
          onPressed: () {},
          child: Text(
            'Edit',
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
      padding: EdgeInsets.only(right: 120.w, left: 120.w,top: 127.h, bottom: 10.h),
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
