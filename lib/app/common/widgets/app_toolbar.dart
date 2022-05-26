import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';

class AppToolbar extends StatelessWidget {
  final String? title;
  Function? backCallBack;
  Function? drawerCallBack;
  Widget? actions;

  AppToolbar({Key? key, this.title, this.backCallBack, this.drawerCallBack, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8, top: 5),
      decoration: BoxDecoration(
          color: AppColors.current.neutral,
          boxShadow: [
            BoxShadow(color: AppColors.current.dimmed.withOpacity(0.15), blurRadius: 3, offset: const Offset(0, 6))
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDims.paddingSize8),
        child: Row(
          children: [
            /// back button
            if (backCallBack != null)
              IconButton(
                  onPressed: () => backCallBack!(),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.current.primary,
                    size: 20,
                  ))
            else if (drawerCallBack != null)
              IconButton(
                  padding: const EdgeInsets.symmetric(horizontal: AppDims.paddingSize8),
                  onPressed: () => drawerCallBack!(),
                  icon: SvgPicture.asset(AppAssets.sideMenuIcon, width: 30.w))
            else
              const SizedBox(
                width: 16,
              ),

            Expanded(
              child: title == null || title!.isEmpty
                  ? Container(
                      width: 120.w,
                      height: 60.h,
                      padding: const EdgeInsets.all(AppDims.paddingSize10),
                      child: SvgPicture.asset(AppAssets.hypeLogo, color: AppColors.current.primary,),
                    )
                  : Text(
                      title!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: AppDims.fontSizeLarge,
                          color: AppColors.current.primary,
                          fontWeight: FontWeight.bold),
                    ),
            ),
            actions ?? SizedBox(width: 30.w)
          ],
        ),
      ),
    );
  }
}
