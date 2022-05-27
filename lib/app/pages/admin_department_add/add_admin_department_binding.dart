import 'package:get/get.dart';
import 'package:hype/app/pages/admin_department_add/add_admin_department_controller.dart';

class AddAdminDepartmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddAdminDepartmentController>(
          () => AddAdminDepartmentController(),
    );
  }
}
