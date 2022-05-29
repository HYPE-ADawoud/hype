import 'package:flutter/material.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/pages/dashboard/dashboard_controller.dart';

class MemberTaskItems extends StatelessWidget {
  final MemberTask memberTask ;
   MemberTaskItems({Key? key ,required this.memberTask}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(top: 12.0,
        bottom: 12.0,
        right: 16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(memberTask.name,
              style: TextStyle(
                  fontSize: AppDims.fontSizeMedium,
                  fontWeight: FontWeight.w600,
                  color: AppColors.current.dimmedXXXXX
              ),
            ),

            Text(memberTask.number.toString(),
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: AppDims.fontSizeMedium,
                  fontWeight: FontWeight.w400,
                  color: AppColors.current.primary
              ),
            ),
          ],
        ),
      );
    }
  }

