import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/create_task/create_task_controller.dart';
import 'package:hype/app/pages/side_menu/side_menu_view.dart';
import 'package:hype/utils/ui/empty.dart';

class CreateTaskView extends GetView<CreateTaskController> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  CreateTaskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: SideMenuView(),
      backgroundColor: AppColors.current.neutral,
      body:_buildBody(),
    );
  }

  Widget _buildBody(){
    return  SafeArea(
      child: Column(
        children: [
          AppToolbar(
            backCallBack: ()=>Get.back(),
            title: 'Create',
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
              //// part one
              _buildNewProject(),
              //// part two
              _buildBriefs(),
              //// part three
              _buildNumberOfDesigns(),
              //// part four
              _buildPlatForm(),
              _buildSize(),
              _buildFormat(),
              _buildReferenceLinkFormField(),
              _buildMaterialFormField(),
              _buildBrandGuidelinesFormField(),
              _buildBriefDescriptionFormField(),
              ///// part five
              _buildButtonCreateTask(),
              // Part SIX
              _buildLine(),
            ],
          ),
        ),
      ),
    );
  }

  /////////////// part one  New Project //////////////////
  Widget _buildNewProject() {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, top: 14.h, bottom: 12.h),
      child: Column(
        children: [
          _buildTitleDividerNewProject(),
          _buildTypeOfClient(),
          _buildClientName(),
          _buildAssignedByFormField(),
          _buildRequestDateFormField(),
          _buildDeadLineDateFormField(),
        ],
      ),
    );
  }

  Widget _buildTitleDividerNewProject() {
    return Row(
      children: [
        _buildTitle(title: 'New Project'),
        Empty(
          width: 2.w,
        ),
        _buildDivider(indent: 210.w),
      ],
    );
  }

  Widget _buildTitle({required String title}) {
    return Text(
      title,
      style: TextStyle(
        fontSize: AppDims.fontSizeLarge,
        fontWeight: FontWeight.w300,
        color: AppColors.current.text,
      ),
    );
  }

  Widget _buildDivider({required double indent}) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Container(
        color: AppColors.current.text,
        child: Divider(
          indent: indent,
          height: 0.3.h,
        ),
      ),
    );
  }

  Widget _buildTypeOfClient() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
        child: Container(
          width: 324.w,
          height: 44.h,
          decoration:
              BoxDecoration(color: AppColors.current.text, borderRadius: BorderRadius.circular(AppDims.borderRadius)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                value: controller.dropDownClientType.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                items: controller.clientsType.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w500,
                          fontSize: AppDims.fontSizeMediumX),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedClientType(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildClientName() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
        child: Container(
          width: 324.w,
          height: 44.h,
          decoration:
              BoxDecoration(color: AppColors.current.text, borderRadius: BorderRadius.circular(AppDims.borderRadius)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                value: controller.dropDownClientName.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                items: controller.clientsName.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w500,
                          fontSize: AppDims.fontSizeMediumX),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedClientName(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAssignedByFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.0.h),
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
            hintText: 'Assigned By',
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

  Widget _buildRequestDateFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.0.h),
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
            suffixIcon: Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8),
              child: Text(
                'Date Of Request',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: AppDims.fontSizeMediumX,
                  color: AppColors.current.dimmedX,
                ),
              ),
            ),
            hintText: '2022-04-21',
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
  Widget _buildDeadLineDateFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.0.h),
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
            suffixIcon: Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8),
              child: Text(
                'DeadLine',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: AppDims.fontSizeMediumX,
                  color: AppColors.current.dimmedX,
                ),
              ),
            ),
            hintText: '2022-05-5',
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

  ///////////////// part two  Briefs //////////////////
  Widget _buildBriefs() {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, top: 14.h, bottom: 12.h),
      child: Column(
        children: [
          _buildTitleDividerBriefs(),
          _buildBriefsByFormField(),
          _buildDepartmentBriefs(),
          _buildTypeOfBriefs(),
          _buildAssignedTo(),
        ],
      ),
    );
  }

  Widget _buildTitleDividerBriefs() {
    return Row(
      children: [
        _buildTitle(title: 'Briefs'),
        Empty(
          width: 2.w,
        ),
        _buildDivider(indent: 252.w),
      ],
    );
  }

  Widget _buildBriefsByFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.0.h),
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
            hintText: 'Brief Title',
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

  Widget _buildDepartmentBriefs() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
        child: Container(
          width: 324.w,
          height: 44.h,
          decoration:
              BoxDecoration(color: AppColors.current.text, borderRadius: BorderRadius.circular(AppDims.borderRadius)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                value: controller.dropDownDepartmentBrief.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                items: controller.departmentBrief.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w500,
                          fontSize: AppDims.fontSizeMediumX),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedDepartmentBrief(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTypeOfBriefs() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
        child: Container(
          width: 324.w,
          height: 44.h,
          decoration:
              BoxDecoration(color: AppColors.current.text, borderRadius: BorderRadius.circular(AppDims.borderRadius)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                value: controller.dropDownTypeOfBrief.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                items: controller.typeOfBrief.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w500,
                          fontSize: AppDims.fontSizeMediumX),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedTypeOfBrief(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAssignedTo() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
        child: Container(
          width: 324.w,
          height: 44.h,
          decoration:
              BoxDecoration(color: AppColors.current.text, borderRadius: BorderRadius.circular(AppDims.borderRadius)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                value: controller.dropDownAssignedToBriefs.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                items: controller.assignedTo.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w500,
                          fontSize: AppDims.fontSizeMediumX),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedAssignedToBriefs(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ////////////////// part three Number of designs /////////

  Widget _buildNumberOfDesigns() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 25.w),
      child: Row(
        children: [
          _buildTitleNumberOfDesigns(),
          Empty(
            width: 24.w,
          ),
          _buildCounter(),
        ],
      ),
    );
  }

  Widget _buildTitleNumberOfDesigns() {
    return SizedBox(
      width: 160.w,
      height: 24.h,
      child: Text(
        'Number of Designs',
        style:
            TextStyle(fontSize: AppDims.fontSizeMedium, color: AppColors.current.neutral, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget _buildCounter() {
    return SizedBox(
      width: 140.w,
      height: 48.h,
      child: Row(
        children: [
          _buildIncreasesAndDecreasesCounter(imageName: AppAssets.plusIcon),
          Empty(
            width: 8.w,
          ),
          Text(
            '0',
            style: TextStyle(color: AppColors.current.neutral, fontSize: AppDims.fontSizeMediumXX),
          ),
          Empty(
            width: 8.w,
          ),
          _buildIncreasesAndDecreasesCounter(imageName: AppAssets.subIcon)
        ],
      ),
    );
  }

  Widget _buildIncreasesAndDecreasesCounter({required String imageName}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 36.w,
        height: 36.h,
        decoration: BoxDecoration(
          color: AppColors.current.neutral,
          shape: BoxShape.circle,
        ),
        child: Center(
            child: SvgPicture.asset(imageName,
                width: 16.w,
                height: 16.h)),
      ),
    );
  }

  ////////////////// part four  //////////////

  Widget _buildPlatForm() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
        child: Container(
          width: 324.w,
          height: 44.h,
          decoration:
              BoxDecoration(color: AppColors.current.text, borderRadius: BorderRadius.circular(AppDims.borderRadius)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                value: controller.dropDownPlatform.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                items: controller.platforms.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style:
                          TextStyle(color: AppColors.current.dimmedXXXX, fontWeight: FontWeight.w500, fontSize: 16.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedPlatform(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSize() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
        child: Container(
          width: 324.w,
          height: 44.h,
          decoration:
              BoxDecoration(color: AppColors.current.text, borderRadius: BorderRadius.circular(AppDims.borderRadius)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                value: controller.dropDownSize.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                items: controller.sizes.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w500,
                          fontSize: AppDims.fontSizeMediumX),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedSize(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormat() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
        child: Container(
          width: 324.w,
          height: 44.h,
          decoration:
              BoxDecoration(color: AppColors.current.text, borderRadius: BorderRadius.circular(AppDims.borderRadius)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                value: controller.dropDownFormat.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                items: controller.formats.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w500,
                          fontSize: AppDims.fontSizeMediumX),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedFormat(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildReferenceLinkFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0.h),
      child: Container(
        width: 324.w,
        height: 82.h,
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
            hintText: 'Reference Link',
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

  Widget _buildMaterialFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.0.h),
      child: Container(
        width: 324.w,
        height: 82.h,
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
            hintText: 'Material',
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

  Widget _buildBrandGuidelinesFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0.h),
      child: Container(
        width: 324.w,
        height: 82.h,
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
            hintText: 'Brand Guidelines',
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

  Widget _buildBriefDescriptionFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0.h),
      child: Container(
        width: 324.w,
        height: 82.h,
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
            hintText: 'Brief Description',
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

  ////////// part five  button create task //////////////////////
  Widget _buildButtonCreateTask() {
    return Padding(
      padding: EdgeInsets.only(top: 12.h, bottom: 100.h),
      child: SizedBox(
        width: 324.w,
        height: 60.h,
        child: ElevatedButton(
            child: Text(
              'Creat Task',
              style: TextStyle(
                  fontSize: AppDims.fontSizeMediumX, color: AppColors.current.primary, fontWeight: FontWeight.w500),
            ),
            onPressed: () {}),
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
          borderRadius: BorderRadius.circular(AppDims.borderRadiusLine),
        ),
      ),
    );
  }
}
