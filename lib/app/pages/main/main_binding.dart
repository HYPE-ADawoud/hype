import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hype/app/pages/home/home_controller.dart';
import 'package:hype/app/pages/notification/notification_controller.dart';
import 'package:hype/app/pages/profile/profile_controller.dart';

import 'main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController(PageController()),);
    Get.lazyPut<HomeController>(() => HomeController(),);
    Get.lazyPut<ProfileController>(() => ProfileController(),);
    Get.lazyPut<NotificationController>(() => NotificationController(),);
  }
}
