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
      padding: const EdgeInsets.only(
        top: AppDims.paddingSize24,
        left: AppDims.paddingSize18,
        right: AppDims.paddingSize18,
        bottom: AppDims.paddingSize10,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppDims.paddingSize15.w, vertical: AppDims.paddingSize20.h),
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
        _buildName(),
        _buildDivider(),
        _buildJobTitle(),
      ],
    );
  }

  Widget _buildName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          department.name,
          style: TextStyle(fontSize: 20.sp, color: AppColors.current.primary, fontWeight: FontWeight.w700),
        ),
        InkWell(
          onTap: () => Get.toNamed(Routes.ADMIN),
          child: SvgPicture.asset(
            AppAssets.editIcon,
            width: 16,
            height: 16,
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppDims.paddingSize10.h),
      child: Divider(
        color: AppColors.current.dimmedXXXX,
        height: 0.5,
      ),
    );
  }

  Widget _buildJobTitle() {
    return Text(
      department.jobTitle,
      style: TextStyle(fontSize: 16.sp, color: AppColors.current.dimmedXXXXX, fontWeight: FontWeight.w400),
    );
  }
}
