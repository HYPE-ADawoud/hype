import 'package:get/get.dart';
import 'package:hype/app/pages/admin/admin_controller.dart';

class AdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminController>(
      () => AdminController(),
    );
  }
}
