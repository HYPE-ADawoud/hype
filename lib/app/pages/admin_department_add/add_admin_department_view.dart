
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/admin_department/admin_department_controller.dart';
import 'package:hype/app/pages/admin_department_add/add_admin_department_controller.dart';

class AddAdminDepartmentView extends StatelessWidget {
  AddAdminDepartmentView({Key? key}) : super(key: key);
  AddAdminDepartmentController controller = Get.find();
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
            title: 'Add Department',
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
        _buildNewDepartment(),
        _buildResponsibleDepartment(),
        _buildDoneButton(),
      ],
    );
  }




  Widget _buildNewDepartment() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 64,
        right: AppDims.paddingSize5,
        left: AppDims.paddingSize5,
        bottom: AppDims.paddingSize16,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Write New Department',
          hintStyle: TextStyle(
              color: AppColors.current.text,
            fontSize: AppDims.fontSizeMedium
          ),
          filled: true,
          fillColor: AppColors.current.primary,
          focusColor: AppColors.current.primary,
        ),
      ),
    );
  }
  Widget _buildResponsibleDepartment() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDims.paddingSize5,
        vertical: AppDims.paddingSize8,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Write Responsible Department',
          hintStyle: TextStyle(
              color: AppColors.current.text,
              fontSize: AppDims.fontSizeMedium
          ),
          filled: true,
          fillColor: AppColors.current.primary,
          focusColor: AppColors.current.primary,
        ),
      ),
    );
  }
  Widget _buildDoneButton() {
    return Padding(
      padding:  EdgeInsets.only(
        top: 64.h,
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
            'Add',
            style: TextStyle(
                fontSize: AppDims.fontSizeMediumX, color: AppColors.current.neutral, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }


}
