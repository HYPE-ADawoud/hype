
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/add_admin_user/add_admin_user_controller.dart';

class AddAdminUserView extends StatelessWidget {
  AddAdminUserView({Key? key}) : super(key: key);
  AddAdminUserController controller = Get.find();
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
            title: 'Creat new account',
          ),
          _buildBodyView(),
        ],
      ),
    );
  }

  Widget _buildBodyView() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppDims.paddingSize24.w),
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
        _buildPassword(),
        _buildConfirmPassword(),
        _buildRole(),
        _buildDepartment(),
        _buildFirstName(),
        _buildLastName(),
        _buildPhone(),
        _buildRegisterButton(),
        _buildSpacer(),
        _buildLine(),
      ],
    );
  }

  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.only(top: 36.h),
      child: Container(
        width: 324.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: AppColors.current.text,
          borderRadius: BorderRadius.circular(AppDims.borderRadius),
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
              fontSize: AppDims.fontSizeMediumX,
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
          borderRadius: BorderRadius.circular(AppDims.borderRadius),
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
              fontSize: AppDims.fontSizeMediumX,
              color: AppColors.current.dimmedX,
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildPassword() {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Container(
        width: 324.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: AppColors.current.text,
          borderRadius: BorderRadius.circular(AppDims.borderRadius),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'Password',
            suffixIcon: SvgPicture.asset(AppAssets.confirmPasswordIcon,fit: BoxFit.scaleDown,),
            hintStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: AppDims.fontSizeMediumX,
              color: AppColors.current.dimmedX,
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildConfirmPassword() {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Container(
        width: 324.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: AppColors.current.text,
          borderRadius: BorderRadius.circular(AppDims.borderRadius),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'Confirm Password',
            suffixIcon: SvgPicture.asset(AppAssets.confirmPasswordIcon,fit: BoxFit.scaleDown,),
            hintStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: AppDims.fontSizeMediumX,
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
          BoxDecoration(color: AppColors.current.text, borderRadius: BorderRadius.circular(AppDims.borderRadius)),
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
                          fontSize: AppDims.fontSizeMedium.sp),
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
        padding: const EdgeInsets.only(top: 36),
        child: Container(
          width: 339.w,
          height: 44.h,
          decoration:
              BoxDecoration(color: AppColors.current.text, borderRadius: BorderRadius.circular(AppDims.borderRadius)),
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
                          fontSize: AppDims.fontSizeMedium.sp),
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
          borderRadius: BorderRadius.circular(AppDims.borderRadius),
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
              fontSize: AppDims.fontSizeMediumX,
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
          borderRadius: BorderRadius.circular(AppDims.borderRadius),
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
              fontSize: AppDims.fontSizeMediumX,
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
          borderRadius: BorderRadius.circular(AppDims.borderRadius),
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
              fontSize: AppDims.fontSizeMediumX,
              color: AppColors.current.dimmedX,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRegisterButton() {
    return Padding(
      padding:  EdgeInsets.only(
        top: 24.h,
        bottom:12.h,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDims.borderRadiusOuter),
        ),
        width: 324.w,
        height: 60.h,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: AppColors.current.primaryX,
          ),
          child: Text(
            'Register',
            style: TextStyle(
                fontSize: AppDims.fontSizeMediumX, color: AppColors.current.neutral, fontWeight: FontWeight.w500),
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
          borderRadius: BorderRadius.circular(AppDims.borderRadiusLine),
        ),
      ),
    );
  }
}
