import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_colors.dart';

class MainAccountAllocationController extends GetxController{
  
  RxList accounts = [
    Account(title: 'Culture Lab', status: 'Completed', color: AppColors.current.green),
    Account(title: 'K Mobile', status: 'in the works', color: AppColors.current.orange),
    Account(title: 'Tryset', status: 'On Hold', color: AppColors.current.yellow),
    Account(title: 'Hype', status: 'in the works', color: AppColors.current.orange),
    Account(title: 'K Mobile', status: 'Completed', color: AppColors.current.green),
  ].obs;
}

class Account{
  String title;
  String status;
  Color color;
  
  Account({required this.title,required this.status,required this.color});
}