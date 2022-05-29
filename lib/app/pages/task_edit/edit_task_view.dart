import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/task_edit/edit_task_controller.dart';
import 'package:hype/utils/ui/empty.dart';

class EditTaskView extends StatelessWidget {
  final EditTaskController controller = Get.find();
  EditTaskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.current.neutral,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          /// toolbar.
          AppToolbar(
            backCallBack: () => Get.back(),
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
              _buildTask(),
              _buildEditButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTask() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.current.neutral,
          borderRadius: BorderRadius.circular(AppDimens.paddingSize16)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(title: 'Client Name'),
            _buildNameFormField(),
            _buildTitle(title: 'Status'),
            _buildStatus(),
            _buildTitle(title: 'Task Title'),
            _buildTitleFormField(),
            _buildTitle(title: ' Assigned by '),
            _buildAssignedFormField(),
            _buildAssignedFormField(),
            _buildTitle(title: ' Date Of Request '),
            _buildTimer(),
            _buildRequestDateFormField(),
            _buildTitle(title: ' Deadline '),
            _buildDeadLineDateFormField(),
          ],
        ),
      ),
    );
  }

Widget _buildTitle({required String title}){
    return Text(title,
    style: TextStyle(
      color: AppColors.current.primary,
      fontSize: AppDimens.fontSizeMediumXX,
      fontWeight: FontWeight.w700
    ),);
}

  Widget _buildNameFormField() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.paddingSize8,
        vertical: AppDimens.paddingSize12,

      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Hype',
          hintStyle: TextStyle(
              color: AppColors.current.dimmedXXXXX,
              fontSize: AppDimens.fontSizeMedium
          ),
          filled: true,
          fillColor: AppColors.current.dimmedLightX,
          focusColor: AppColors.current.dimmedLightXX,
        ),
      ),
    );
  }
  Widget _buildStatus() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
        child: Container(
          width: 324.w,
          height: 44.h,
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX,
              borderRadius: BorderRadius.circular(AppDimens.borderRadius)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                value: controller.dropDownStatus.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.dimmedXXXXX,
                  size: 30.h,
                ),
                items: controller.statusItem.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.orangeX,
                          fontWeight: FontWeight.w500,
                          fontSize: AppDimens.fontSizeMediumX),
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
  Widget _buildTitleFormField() {
    return Padding(
      padding: const EdgeInsets.symmetric(

        horizontal: AppDimens.paddingSize8,
        vertical: AppDimens.paddingSize12,

      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Hiring Post Account director',
          hintStyle: TextStyle(
              color: AppColors.current.dimmedXXXXX,
              fontSize: AppDimens.fontSizeMedium
          ),
          filled: true,
          fillColor: AppColors.current.dimmedLightX,
          focusColor: AppColors.current.dimmedLightXX,
        ),
        maxLines: 5,
      ),
    );
  }
  Widget _buildAssignedFormField() {
    return Padding(
      padding: const EdgeInsets.symmetric(

        horizontal: AppDimens.paddingSize8,
        vertical: AppDimens.paddingSize12,

      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Amera Ayman',
          hintStyle: TextStyle(
              color: AppColors.current.dimmedXXXXX,
              fontSize: AppDimens.fontSizeMedium
          ),
          filled: true,
          fillColor: AppColors.current.dimmedLightX,
          focusColor: AppColors.current.dimmedLightXX,
        ),
      ),
    );
  }
  Widget _buildTimer() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDimens.paddingSize16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('00:00:06:45',
              style: TextStyle(
                  fontWeight: FontWeight.w700, color: AppColors.current.dimmedXXX, fontSize: AppDimens.fontSizeLarge)),

          Empty(height: 16.w,),

          Container(
              width: 77,
              height: 77,
              decoration: BoxDecoration(
                color: AppColors.current.dimmed.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(AppAssets.pauseIcon, width: 16.w, height: 16.h,
                fit: BoxFit.scaleDown,)),
        ],
      ),
    );
  }
  Widget _buildRequestDateFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.0.h),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
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
                fontSize: AppDimens.fontSizeMediumX,
                color: AppColors.current.dimmedX,
              ),
            ),
          ),
          hintText: '2022-04-21',
          hintStyle: TextStyle(
              color: AppColors.current.dimmedXXXXX,
              fontSize: AppDimens.fontSizeMedium
          ),
          filled: true,
          fillColor: AppColors.current.dimmedLightX,
          focusColor: AppColors.current.dimmedLightXX,
        ),
        ),
    );
  }
  Widget _buildDeadLineDateFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.0.h),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
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
                fontSize: AppDimens.fontSizeMediumX,
                color: AppColors.current.dimmedX,
              ),
            ),
          ),
          hintText: '2022-05-5',
          hintStyle: TextStyle(
              color: AppColors.current.dimmedXXXXX,
              fontSize: AppDimens.fontSizeMedium
          ),
          filled: true,
          fillColor: AppColors.current.dimmedLightX,
          focusColor: AppColors.current.dimmedLightXX,
        ),
        ),
      
    );
  }


  Widget _buildEditButton() {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppDimens.paddingSize16,
        bottom: AppDimens.paddingSize12,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter),
        ),
        width: 324.w,
        height: 60.h,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: AppColors.current.primaryXX,
          ),
          onPressed: () {},
          child: Text(
            'Edit',
            style: TextStyle(
                fontSize: AppDimens.fontSizeMediumX, color: AppColors.current.neutral, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
