import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/pages/department/department_controller.dart';
import 'package:hype/app/routes/app_pages.dart';

class DepartmentItems extends StatelessWidget {
  final Department department;
  DepartmentItems({Key? key, required this.department}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal:  AppDimens.paddingSize18,
        vertical:  AppDimens.paddingSize8,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:  AppDimens.paddingSize15.w, vertical:  AppDimens.paddingSize20.h),
        width: 339.w,
        height: 120.h,
        decoration: BoxDecoration(
          color: AppColors.current.neutral,
          borderRadius: BorderRadius.circular(8),
        ),
        child: _buildItems(),
      ),
    );
  }

  Widget _buildItems() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildJobTitle(),
        _buildDivider(),
        _buildName(),


      ],
    );
  }

  Widget _buildName() {
    return Text(
      department.name,
      style: TextStyle(fontSize: 16.sp, color: AppColors.current.dimmedXXXXX, fontWeight: FontWeight.w400),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:  AppDimens.paddingSize10.h),
      child: Divider(
        color: AppColors.current.dimmedXXXX,
        height: 1,
      ),
    );
  }

  Widget _buildJobTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          department.jobTitle,
          style: TextStyle(fontSize: 20.sp, color: AppColors.current.primary, fontWeight: FontWeight.w700),
        ),
        InkWell(
          onTap: () => Get.toNamed(Routes.ADMIN_DEPARTMENT),
          child: SvgPicture.asset(
            AppAssets.editIcon,
            width: 18,
            height: 18,
          ),
        ),
      ],
    );
  }
}
