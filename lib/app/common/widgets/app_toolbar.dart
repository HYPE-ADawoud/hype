import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';

class AppToolbar extends StatelessWidget {
  final String title;
  Function? backCallBack;
  Function? drawerCallBack;
  Widget? actions;

  AppToolbar({Key? key, required this.title, this.backCallBack, this.drawerCallBack, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8, top: 5),
      decoration: BoxDecoration(
          color: AppColors.current.neutral,
          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
          boxShadow: [
            BoxShadow(color: AppColors.current.dimmed.withOpacity(0.15), blurRadius: 3, offset: const Offset(0, 6))
          ]),
      child: Row(
        children: [
          /// back button
          if (backCallBack != null)
            IconButton(
                onPressed: () => backCallBack!(),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.current.accent,
                  size: 20,
                ))
          else if (drawerCallBack != null)
            IconButton(
              padding: const EdgeInsets.symmetric(horizontal: 2),
                onPressed: () => drawerCallBack!(),
                icon: SvgPicture.asset(AppAssets.hypeLogo, width: 30 , height: 30,))
          else
            const SizedBox(
              width: 16,
            ),

          Expanded(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: Get.textTheme.headline2?.fontSize,
                  color: AppColors.current.accent,
                  fontWeight: FontWeight.bold),
            ),
          ),

          actions??const SizedBox()
        ],
      ),
    );
  }
}
