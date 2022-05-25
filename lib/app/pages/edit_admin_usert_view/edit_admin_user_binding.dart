import 'package:get/get.dart';
import 'package:hype/app/pages/edit_admin_usert_view/edit_admin_user_controller.dart';

class EditAdminUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditAdminUserController>(
            () => EditAdminUserController()
    );
  }
}
