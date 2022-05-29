import 'package:get/get.dart';
import 'package:hype/app/pages/admin_department/admin_department_controller.dart';

class AdminDepartmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminDepartmentController>(
          () => AdminDepartmentController(),
    );
  }
}
