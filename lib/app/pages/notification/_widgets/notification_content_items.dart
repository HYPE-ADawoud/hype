import 'package:flutter/material.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/utils/ui/empty.dart';


class NotificationContentItem extends StatelessWidget {
  const NotificationContentItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: AppDimens.paddingSize16, vertical: AppDimens.paddingSize8),
      child: Container(
        padding: const EdgeInsets.all(AppDimens.paddingSize16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter),
          color: AppColors.current.primaryXX,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildContent(),
            Empty(height: 6,),
            _buildDate(),

          ],
        ),
      ),
    );
  }

  Widget _buildContent(){
    return Text(
      'Mohamed issa assigned you Design adress resize',
      style: TextStyle(
        fontSize: AppDimens.fontSizeMediumX,
        fontWeight: FontWeight.w400,
        color: AppColors.current.text,
      ),
    );
  }

  Widget _buildDate(){
    return  Text(
      'April 20, 2022  12:00:00 AM',
      style: TextStyle(
        fontSize: AppDimens.fontSizeSmallXX,
        fontWeight: FontWeight.w400,
        color: AppColors.current.text,
      ),
    );
  }
}
