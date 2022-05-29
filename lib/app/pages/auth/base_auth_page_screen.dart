import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/utils/ui/ui_lib.dart';

class BaseAuthPageScreen extends StatelessWidget {
  final String pageTitle;
  final String? pageSubTitle;
  final Widget child;
  const BaseAuthPageScreen({Key? key, required this.pageTitle, this.pageSubTitle, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.current.background,
      body: _buildBodyView(),
    );
  }

  Widget _buildBodyView() {
    return SingleChildScrollView(
      padding: AppDimens.pagePadding,
      child: SafeArea(
        child: Column(
          children: [
            /// logo
            _buildToolbar,

            Empty(height: AppDimens.paddingSize50.h,),

            _buildPageTitle(),

            _buildPageSubtitle(),

            child
          ],
        ),
      ),
    );
  }

  SizedBox _buildPageSubtitle() {
    return SizedBox(
        height: AppDimens.paddingSize80.h,
        child: (pageSubTitle != null && pageSubTitle!.isNotEmpty)
            ? Align(
          alignment: Alignment.centerLeft,
              child: Text(
                  pageSubTitle!,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: AppDimens.fontSizeMediumX, color: AppColors.current.text),
                ),
            )
            : const SizedBox());
  }

  Row _buildPageTitle() {
    return Row(children: [
      Expanded(child: Divider(color: AppColors.current.text, thickness: 1,)),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.paddingSize8),
        child: Text(pageTitle, style: TextStyle(color: AppColors.current.text, fontSize: AppDimens.fontSizeLarge),),
      ),
      Expanded(child: Divider(color: AppColors.current.text,thickness: 1,)),
    ],);
  }

  get _buildToolbar {
    return Container(
      padding: const EdgeInsets.only(top: AppDimens.paddingSize50),
      child: Center(child: SvgPicture.asset(AppAssets.hypeLogo, width: 175.w, height: 58.h,)),
    );
  }
}
