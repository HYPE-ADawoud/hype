import 'package:get/get.dart';
import 'package:hype/app/pages/client_edit/edit_client_controller.dart';

class EditClientBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditClientController>(() => EditClientController());
  }
}
