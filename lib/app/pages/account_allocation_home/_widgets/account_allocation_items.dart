
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/pages/account_allocation_home/main_acount_allocation_controller.dart';
import 'package:hype/app/routes/app_pages.dart';

class AccountAllocationItem extends StatelessWidget {
  final Account account;
   AccountAllocationItem({Key? key,required this.account}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical:  AppDimens.paddingSize8,
          horizontal: AppDimens.paddingSize16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal:  AppDimens.paddingSize8),
        width: 339.w,
        height: 60.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular( AppDimens.paddingSize10),
            color: AppColors.current.neutral
        ),
        child: Row(
          children: [
            _buildTitle(title:account.title),
            _buildSpace(),
            _buildStatus(status: account.status,
                color: account.color),
            _buildCircle(color: account.color),
            _buildIconExpand(),
          ],
        ),
      ),
    );
  }
  Widget _buildTitle({required String title}){
    return Text(title,
      style: TextStyle(
          fontSize:  AppDimens.fontSizeMediumX,
          fontWeight: FontWeight.w600,
          color: AppColors.current.dimmedXXXXX
      ),);
  }
  Widget _buildSpace(){
    return const Spacer(
      flex: 1,
    );
  }
  Widget _buildStatus({required String status,required Color color}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Text(status,
        style: TextStyle(
            fontSize:  AppDimens.fontSizeMedium,
            fontWeight: FontWeight.w700,
            color: color
        ),),
    );
  }
  Widget _buildCircle({required Color color}){
    return Container(
      width: 16.w,
      height: 16.h,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
      ),
    );
  }
  Widget _buildIconExpand(){
    return IconButton(
      icon: Icon(Icons.keyboard_arrow_down,
        color: AppColors.current.primary,),
      onPressed: (){
        Get.toNamed(Routes.ACCOUNT_ALLOCATION);
      },);
  }
}
