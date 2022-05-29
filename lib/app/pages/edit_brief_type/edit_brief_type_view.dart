import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/edit_brief_type/edit_brief_type_controller.dart';

class EditBriefTypeBriefView extends StatelessWidget {
  final EditBriefTypeController controller = Get.find();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  EditBriefTypeBriefView({Key? key}) : super(key: key);

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
            title: 'Edit Brief Type',
            backCallBack: () =>Get.back(),
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
    return Obx(
        (){
           return SingleChildScrollView(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildName(),
                _buildResponsible(),
                _buildDescription(),
                _buildSubTaskTitle(),
                _buildAddSubTaskButton(),
                _buildSubTask(),
                _buildDoneButton(),
                _buildLine(),
              ],
          ),
           );
        }
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
            fontSize: AppDims.fontSizeMediumX,
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
                  borderRadius: BorderRadius.circular(AppDims.borderRadiusOuter)),
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
            fontSize: AppDims.fontSizeMediumX,
            color: AppColors.current.dimmedX,
          ),
        ),
        maxLines: 5,
      ),
    );
  }

  Widget _buildSubTaskTitle(){
    return Padding(
      padding: const EdgeInsets.only(top:16.0),
      child: Text('Sub-Tasks',
      style: TextStyle(
        fontSize: AppDims.fontSizeMedium,
        fontWeight: FontWeight.w600,
        color: AppColors.current.text
      ),
      ),
    );
  }
  Widget _buildAddSubTaskButton() {

      return Padding(
        padding: EdgeInsets.only(top: 16.0.h),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.primary,
              borderRadius: BorderRadius.circular(AppDims.borderRadiusOuter),
              border: Border.all(
                color: AppColors.current.neutral,
                width: 1,
              )),
          width: 170.w,
          height: 60.h,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: AppColors.current.primary),
            onPressed: () {
              controller.showSubTask();
            },
            child: Text(
              'Add subtask',
              style: TextStyle(
                  fontSize: AppDims.fontSizeMediumX, color: AppColors.current.neutral, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      );

  }

  Widget _buildSubTask(){
    return   Visibility(
      visible: controller.isVisible.value,
      child: Column(children: [
        _buildName(),
        _buildResponsible(),
      ],
      ),
    );
  }
  Widget _buildDoneButton() {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppDims.paddingSize24,
        bottom: AppDims.paddingSize12,
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
            'Done',
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
