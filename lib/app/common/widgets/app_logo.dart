
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hype/app/common/themes/app_assets.dart';

class AppLogo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.logo,
      fit: BoxFit.contain,
    );
  }

}