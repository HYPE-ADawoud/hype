import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/common/widgets/big_btn.dart';
import 'package:hype/utils/ui/ui_lib.dart';

import 'profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.current.neutral,
      body: SafeArea(
        child: Column(
          children: [
            const AppToolbar(),
            Expanded(
              child: Container(
                color: AppColors.current.background,
                padding:
                    EdgeInsets.symmetric(vertical: AppDimens.paddingSize20.h, horizontal: AppDimens.paddingSize20.h),
                child: Column(
                  children: [
                    /// img profile
                    CircleAvatar(
                      radius: 55.w,
                      backgroundImage: const AssetImage(AppAssets.userIcon),
                      backgroundColor: AppColors.current.dimmedLight,
                    ),

                    Empty(
                      height: AppDimens.paddingSize20.h,
                    ),

                    /// name
                    Text(
                      'Ahmed Dawoud',
                      style: TextStyle(
                          fontSize: AppDimens.fontSizeLarge,
                          color: AppColors.current.text,
                          fontWeight: FontWeight.bold),
                    ),
                    Empty(
                      height: AppDimens.paddingSize20.h,
                    ),

                    /// desc
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppDimens.paddingSize40.w),
                      child: Text(
                        'This text is an example that can be replaced in the same space, where you can create this text ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: AppDimens.fontSizeMediumXX,
                            letterSpacing: 1,
                            wordSpacing: 2,
                            color: AppColors.current.text),
                      ),
                    ),
                    Empty(
                      height: AppDimens.paddingSize50.h,
                    ),

                    /// reset password
                    _buildResetPasswordButton(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildResetPasswordButton() {
    return BigBtn(
      state: controller.loginLoading.value ? BtnState.loading : BtnState.active,
      text: 'Reset password',
      onPressed: () => controller.navigateToResetPasswordView(),
    );
  }
}
