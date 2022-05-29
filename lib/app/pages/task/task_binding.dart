import 'package:get/get.dart';
import 'package:hype/app/pages/task/task_controller.dart';

class TaskBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut<TaskController>(() => TaskController());
  }


}