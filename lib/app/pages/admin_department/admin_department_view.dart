
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/admin_department/admin_department_controller.dart';

class AdminDepartmentView extends StatelessWidget {
  AdminDepartmentView({Key? key}) : super(key: key);
  AdminDepartmentController controller = Get.find();
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
            title: 'Admin',
          ),
          _buildBodyView(),
        ],
      ),
    );
  }

  Widget _buildBodyView() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:  AppDimens.paddingSize24.w),
        color: AppColors.current.primary,
        child: _buildFormAdmin(),
      ),
    );
  }

  Widget _buildFormAdmin() {
    return Column(
      children: [
        _buildName(),
        _buildJobTitle(),
        //_buildDescription(),
        _buildDoneButton(),
        _buildDeleteButton(),
        _buildSpacer(),
        _buildLine(),
      ],
    );
  }

  Widget _buildName() {
    return Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: Container(
        width: 324.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: AppColors.current.text,
          borderRadius: BorderRadius.circular( AppDimens.borderRadius),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'Name',
            hintStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize:  AppDimens.fontSizeMediumX,
              color: AppColors.current.dimmedX,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildJobTitle() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(vertical: 13.h),
        child: Container(
          width: 339.w,
          height: 44.h,
          decoration:
              BoxDecoration(color: AppColors.current.text, borderRadius: BorderRadius.circular( AppDimens.borderRadius)),
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
                          fontSize:  AppDimens.fontSizeMedium.sp),
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

  Widget _buildDescription() {
    return Padding(
      padding: EdgeInsets.only(bottom: 237.0.h),
      child: Container(
        width: 324.w,
        height: 143.h,
        decoration: BoxDecoration(
          color: AppColors.current.text,
          borderRadius: BorderRadius.circular( AppDimens.borderRadius),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'Description',
            hintStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize:  AppDimens.fontSizeMediumX,
              color: AppColors.current.dimmedX,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDoneButton() {
    return Padding(
      padding:  EdgeInsets.only(
        top: 236.h,
        bottom:12.h,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular( AppDimens.borderRadiusOuter),
        ),
        width: 324.w,
        height: 60.h,
        child: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          style: ElevatedButton.styleFrom(
            primary: AppColors.current.primaryX,
          ),
          child: Text(
            'Done',
            style: TextStyle(
                fontSize:  AppDimens.fontSizeMediumX, color: AppColors.current.neutral, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
  Widget _buildDeleteButton() {
    return Padding(
      padding: const EdgeInsets.only(
        top:  AppDimens.paddingSize8,
        bottom: 100,
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
            primary: AppColors.current.dimmedXX,
          ),
          onPressed: () {
            Get.back();
          },
          child: Text(
            'Delete',
            style: TextStyle(
                fontSize:  AppDimens.fontSizeMediumX,
                color: AppColors.current.neutral,
                fontWeight: FontWeight.w500),
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
          borderRadius: BorderRadius.circular( AppDimens.borderRadiusLine),
        ),
      ),
    );
  }
}
