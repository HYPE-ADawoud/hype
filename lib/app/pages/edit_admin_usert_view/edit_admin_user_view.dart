import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/edit_admin_usert_view/edit_admin_user_controller.dart';

class EditAdminUserView extends StatelessWidget {
  final EditAdminUserController controller = Get.find();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  EditAdminUserView({Key? key}) : super(key: key);

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
            title: 'Admin',
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
        padding: EdgeInsets.symmetric(horizontal: AppDims.paddingSize24.w),
        color: AppColors.current.primary,
        child: _buildForm(),
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      children: [
        _buildEmail(),
        _buildUserName(),
        _buildRole(),
        _buildDepartment(),
        _buildFirstName(),
        _buildLastName(),
        _buildPhone(),
        _buildSubmitButton(),
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
      padding: EdgeInsets.only(top: 13.h),
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
            hintText: 'UserName',
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

  Widget _buildFirstName() {
    return Padding(
      padding: EdgeInsets.only(top: 13.h),
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
            hintText: 'FirstName',
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

  Widget _buildRole() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.only(top: 13.h),
        child: Container(
          width: 324.w,
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
                items: controller.itemsRole.map((String items) {
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

  Widget _buildDepartment() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.only(top: 13.h),
        child: Container(
          width: 324.w,
          height: 44.h,
          decoration:
              BoxDecoration(color: AppColors.current.text, borderRadius: BorderRadius.circular(AppDims.borderRadius)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownDepartmentValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsDepartment.map((String items) {
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
                onChanged: (newValue) => controller.setSelectedDepartment(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLastName() {
    return Padding(
      padding: EdgeInsets.only(top: 13.h),
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
            hintText: 'LastName',
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
      padding: EdgeInsets.only(top: 13.h,bottom: 100.h),
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
  Widget _buildSubmitButton() {
    return SizedBox(
      width: 324.w,
      height: 60.h,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Submit',
          style: TextStyle(
              fontSize: AppDims.fontSizeMediumX, color: AppColors.current.primary, fontWeight: FontWeight.w500),
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
