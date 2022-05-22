import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/pages/admin/admin_controller.dart';
import 'package:hype/app/routes/app_pages.dart';

class ContentItemBrief extends StatelessWidget {
  final AdminBrief brief;
   ContentItemBrief({Key? key,required this.brief}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDims.paddingSize16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppDims.paddingSize16.w, vertical: AppDims.paddingSize16.h),
        width: 339.w,
        height: 193.h,
        decoration: BoxDecoration(
            color: AppColors.current.neutral, borderRadius: BorderRadius.circular(AppDims.borderRadiusOuter)),
        child: _buildContentItemsBrief(),
      ),
    );
  }

  Widget _buildContentItemsBrief() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildNameBrief(),
        _buildDivider(),
        _buildParentDepart(
          title: 'Parent',
          status: brief.parentStatus!
        ),
        _buildDivider(),
        _buildParentDepart(
          title: 'Department',
          status: brief.departmentStatus!
        ),
        _buildDivider(),
        _buildDescription(),
      ],
    );
  }
  Widget _buildNameBrief() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          brief.name!,
          style: TextStyle(fontSize: 16.sp, color: AppColors.current.primary, fontWeight: FontWeight.w700),
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
  _buildDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppDims.paddingSize10.h),
      child: Divider(
        color: AppColors.current.dimmedXXXX,
        height: 0.5,
      ),
    );
  }
  Widget _buildParentDepart({required String title,required String status}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 14.sp,
              color: AppColors.current.dimmedXXXX,
              fontWeight: FontWeight.w600),
        ),
        Padding(
          padding: const EdgeInsets.only(right:AppDims.paddingSize10),
          child: Text(
            status,
            style: TextStyle(fontSize: 14.sp,
                color: AppColors.current.primary,
                fontWeight: FontWeight.w300),
          ),
        )
      ],
    );
  }
  Widget _buildDescription() {
    return Text(
      'Description',
      style: TextStyle(fontSize: 14.sp, color: AppColors.current.dimmedXXXX, fontWeight: FontWeight.w600),
    );
  }
}
