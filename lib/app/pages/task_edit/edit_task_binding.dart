import 'package:get/get.dart';
import 'package:hype/app/pages/task_edit/edit_task_controller.dart';

class EditTaskBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut<EditTaskController>(() => EditTaskController());
  }


}