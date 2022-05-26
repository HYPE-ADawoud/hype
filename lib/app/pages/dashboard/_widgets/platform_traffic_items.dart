import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/pages/dashboard/dashboard_controller.dart';

class PlatformTrafficItems extends StatelessWidget {
  final PlatformsTraffic platformsTraffic;
   PlatformTrafficItems({Key? key,required this.platformsTraffic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 164.w,
            child: Text(platformsTraffic.typeOfNumber,
              style: TextStyle(
                  fontSize: AppDims.fontSizeMedium,
                  fontWeight: FontWeight.w600,
                  color: AppColors.current.dimmedXXXXX
              ),
            ),
          ),

          SizedBox(
            width: 64.w,
            child: Text(platformsTraffic.valueNumber.toString(),
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: AppDims.fontSizeMedium,
                  fontWeight: FontWeight.w600,
                  color: AppColors.current.dimmedXXXXX
              ),
            ),
          ),

          SizedBox(
            width: 80.w,
            child: Text('${platformsTraffic.percentage} %',
              style: TextStyle(
                  fontSize: AppDims.fontSizeMedium,
                  fontWeight: FontWeight.w300,
                  color: AppColors.current.primary
              ),
            ),
          )
        ],
      ),
    );
  }


}
