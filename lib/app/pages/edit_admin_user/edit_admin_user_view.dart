
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/add_admin_user/add_admin_user_controller.dart';
import 'package:hype/app/pages/edit_admin_user/edit_admin_user_controller.dart';

class EditAdminUserView extends StatelessWidget {
  EditAdminUserView({Key? key}) : super(key: key);
  EditAdminUserController controller = Get.find();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.current.neutral,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Column(
        children: [
          AppToolbar(
            backCallBack: ()=>Get.back(),
            title: 'Edit Member',
          ),
          _buildBodyView(),
        ],
      ),
    );
  }

  Widget _buildBodyView() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppDimens.paddingSize24.w),
        color: AppColors.current.primary,
        child: _buildFormAdmin(),
      ),
    );
  }

  Widget _buildFormAdmin() {
    return Column(
      children: [
        _buildEmail(),
        _buildUserName(),
        _buildRole(),
        _buildDepartment(),
        _buildFirstName(),
        _buildLastName(),
        _buildPhone(),
        _buildEditButton(),
        _buildSpacer(),
        _buildLine(),
      ],
    );
  }

  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: Container(
        width: 324.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: AppColors.current.text,
          borderRadius: BorderRadius.circular(AppDimens.borderRadius),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'Email',
            hintStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: AppDimens.fontSizeMediumX,
              color: AppColors.current.dimmedX,
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildUserName() {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Container(
        width: 324.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: AppColors.current.text,
          borderRadius: BorderRadius.circular(AppDimens.borderRadius),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'User Name',
            hintStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: AppDimens.fontSizeMediumX,
              color: AppColors.current.dimmedX,
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildDepartment() {
    return Obx(
          () => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          width: 339.w,
          height: 44.h,
          decoration:
          BoxDecoration(color: AppColors.current.text, borderRadius: BorderRadius.circular(AppDimens.borderRadius)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.items.map((String items) {
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
                onChanged: (newValue) => controller.setSelected(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildRole() {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(top: 48),
        child: Container(
          width: 339.w,
          height: 44.h,
          decoration:
              BoxDecoration(color: AppColors.current.text, borderRadius: BorderRadius.circular(AppDimens.borderRadius)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownRoleValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.rolesItem.map((String items) {
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
                onChanged: (newValue) => controller.setSelectedRole(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildFirstName() {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Container(
        width: 324.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: AppColors.current.text,
          borderRadius: BorderRadius.circular(AppDimens.borderRadius),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'First Name',
            hintStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: AppDimens.fontSizeMediumX,
              color: AppColors.current.dimmedX,
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildLastName() {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Container(
        width: 324.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: AppColors.current.text,
          borderRadius: BorderRadius.circular(AppDimens.borderRadius),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'Last Name',
            hintStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: AppDimens.fontSizeMediumX,
              color: AppColors.current.dimmedX,
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildPhone() {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Container(
        width: 324.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: AppColors.current.text,
          borderRadius: BorderRadius.circular(AppDimens.borderRadius),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'Phone',
            hintStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: AppDimens.fontSizeMediumX,
              color: AppColors.current.dimmedX,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEditButton() {
    return Padding(
      padding:  EdgeInsets.only(
        top: 24.h,
        bottom:12.h,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter),
        ),
        width: 324.w,
        height: 60.h,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: AppColors.current.primaryX,
          ),
          child: Text(
            'Edit',
            style: TextStyle(
                fontSize: AppDimens.fontSizeMediumX, color: AppColors.current.neutral, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  Widget _buildSpacer() {
    return const Spacer(
      flex: 1,
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
