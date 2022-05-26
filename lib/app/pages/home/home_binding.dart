import 'package:get/get.dart';
import 'package:hype/app/pages/drawer/drawer_controller.dart';

import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DrawerViewController>(() => DrawerViewController());
    Get.lazyPut<HomeController>(() => HomeController(),);
  }
}
