import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/models/generic_model.dart';

class AdminController extends GetxController with GetSingleTickerProviderStateMixin {
  RxList users = [
    AdminUser(name: 'Beshoy Wagdy', email: 'BWagdy@hype-egypt.com', numberOfMember: 29),
    AdminUser(name: 'Beshoy Wagdy', email: 'BWagdy@hype-egypt.com', numberOfMember: 29),
    AdminUser(name: 'Beshoy Wagdy', email: 'BWagdy@hype-egypt.com', numberOfMember: 29),
    AdminUser(name: 'Beshoy Wagdy', email: 'BWagdy@hype-egypt.com', numberOfMember: 29),
    AdminUser(name: 'Beshoy Wagdy', email: 'BWagdy@hype-egypt.com', numberOfMember: 20),
  ].obs;

  RxList briefs = [
    AdminBrief(name: 'Buffalo Burger OOH Campaign', parentStatus: 'No', departmentStatus: 'Not assigned'),
    AdminBrief(name: 'Buffalo Burger OOH Campaign', parentStatus: 'No', departmentStatus: 'Not assigned'),
    AdminBrief(name: 'Buffalo Burger OOH Campaign', parentStatus: 'No', departmentStatus: 'Not assigned'),
    AdminBrief(name: 'Buffalo Burger OOH Campaign', parentStatus: 'No', departmentStatus: 'Not assigned'),
    AdminBrief(name: 'Buffalo Burger OOH Campaign', parentStatus: 'No', departmentStatus: 'Not assigned'),
  ].obs;

  RxList<GenericModel> tabList = <GenericModel>[].obs;

  TabController? tabController;
  var selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this)
      ..addListener(() {
        selectedIndex.value = tabController!.index;
      });
    _initTabList();
  }

  void _initTabList() {
    final list = <GenericModel>[
      GenericModel(id: 0, title: 'Users'.tr, isSelected: true),
      GenericModel(id: 1, title: 'Brief Types'.tr, isSelected: false)
    ];

    tabList.assignAll(list);
    tabList.refresh();
  }

  void onTabClick(int index) {
    tabList[tabList.indexWhere((element) => element.isSelected == true)].isSelected = false;
    tabList[index].isSelected = true;
    tabList.refresh();
  }
}

class AdminUser {
  String? name;
  String? email;
  int? numberOfMember;

  AdminUser({required this.name, required this.email, required this.numberOfMember});
}

class AdminBrief {
  String? name;
  String? parentStatus;
  String? departmentStatus;

  AdminBrief({required this.name, required this.parentStatus, required this.departmentStatus});
}
