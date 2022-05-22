import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/pages/admin/admin_controller.dart';
import 'package:hype/app/routes/app_pages.dart';

class ContentItemUser extends StatelessWidget {
  final AdminUser user;
   ContentItemUser({Key? key,required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDims.paddingSize16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppDims.paddingSize16.w, vertical: AppDims.paddingSize16.h),
        width: 339.w,
        height: 155.h,
        decoration: BoxDecoration(
            color: AppColors.current.neutral, borderRadius: BorderRadius.circular(AppDims.borderRadiusOuter)),
        child: _buildContentItemsUsers(),
      ),
    );
  }

  Widget _buildContentItemsUsers() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildName(),
        _buildDivider(),
        _buildEmail(),
        _buildDivider(),
        _buildTeamMember(),
      ],
    );
  }
  Widget _buildName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          user.name!,
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
  Widget _buildEmail() {
    return Text(
      user.email!,
      style: TextStyle(fontSize: 16.sp, color: AppColors.current.primary, fontWeight: FontWeight.w400),
    );
  }
  Widget _buildTeamMember() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Team Member',
          style: TextStyle(fontSize: 14.sp, color: AppColors.current.dimmedXXXX, fontWeight: FontWeight.w600),
        ),
        Text(
          user.numberOfMember!.toString(),
          style: TextStyle(fontSize: 14.sp, color: AppColors.current.dimmedXXXX, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
