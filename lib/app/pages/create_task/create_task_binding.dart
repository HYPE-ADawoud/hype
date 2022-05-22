import 'package:get/get.dart';
import 'package:hype/app/pages/create_task/create_task_controller.dart';


class CreateTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateTaskController>(
      () => CreateTaskController(),
    );
  }
}
