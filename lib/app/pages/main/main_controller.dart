import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {

  RxInt selectedBottomNavBarIndex = 0.obs;
  final PageController _pageViewController;

   PageController get pageViewController => _pageViewController;

  MainController(this._pageViewController);

  onBottomNavBarChanged({required int index}) {
    selectedBottomNavBarIndex.value = index;
    _pageViewController.animateToPage(index, duration: Duration(microseconds: 500), curve: Curves.easeOut);
  }

}
