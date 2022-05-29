import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/edit_admin_brief/edit_admin_brief_controller.dart';

class EditAdminBriefView extends StatelessWidget {
  final EditAdminBriefController controller = Get.find();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  EditAdminBriefView({Key? key}) : super(key: key);

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
        padding: EdgeInsets.symmetric(horizontal: AppDimens.paddingSize24.w),
        color: AppColors.current.primary,
        child: _buildForm(),
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      children: [
        _buildName(),
        _buildResponsible(),
        _buildDescription(),
        _buildAddSubTaskButton(),
        _buildSpacer(),
        _buildLine(),
      ],
    );
  }

  Widget _buildName() {
    return Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: AppColors.current.primary,
              width: 1.0,
            ),
          ),
          border: InputBorder.none,
          //focusedBorder: InputBorder.none,
          //enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: 'Name',
          hintStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: AppDimens.fontSizeMediumX,
            color: AppColors.current.dimmedX,
          ),
        ),
      ),
    );
  }

  Widget _buildResponsible() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.only(top: 13.h),
        child: Container(
          decoration:
              BoxDecoration(color: AppColors.current.text,
                  borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownResponsibleValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsResponsible.map((String items) {
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

  Widget _buildDescription() {
    return Padding(
      padding: EdgeInsets.only(top: 13.h),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: AppColors.current.primary,
              width: 1.0,
            ),
          ),
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: 'Description',
          hintStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: AppDimens.fontSizeMediumX,
            color: AppColors.current.dimmedX,
          ),
        ),
        maxLines: 5,
      ),
    );
  }

  Widget _buildAddSubTaskButton() {
    return Padding(
      padding: EdgeInsets.only(top: 100.0.h),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.current.primary,
            borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter),
            border: Border.all(
              color: AppColors.current.neutral,
              width: 1,
            )),
        width: 170.w,
        height: 60.h,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: AppColors.current.primary),
          onPressed: () {},
          child: Text(
            'Add subtask',
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
