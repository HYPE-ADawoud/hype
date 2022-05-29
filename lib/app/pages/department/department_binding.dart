import 'package:get/get.dart';
import 'package:hype/app/pages/department/department_controller.dart';

class DepartmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DepartmentController>(
          () => DepartmentController(),
    );
  }
}
