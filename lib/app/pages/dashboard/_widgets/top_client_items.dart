import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/pages/dashboard/dashboard_controller.dart';

class TopClientItems extends StatelessWidget {
  final TopClient topClient;
   TopClientItems({Key? key,required this.topClient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 110.w,
            child: Text(topClient.name,
              style: TextStyle(
                  fontSize: AppDims.fontSizeMedium,
                  fontWeight: FontWeight.w600,
                  color: AppColors.current.dimmedXXXXX
              ),
            ),
          ),

          SizedBox(
            width: 148.w,
            child: Text(topClient.timeSpent,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: AppDims.fontSizeMedium,
                  fontWeight: FontWeight.w600,
                  color: AppColors.current.dimmedXXXXX
              ),
            ),
          ),

          SizedBox(
            width: 48.w,
            child: Text(topClient.tasks.toString(),
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
