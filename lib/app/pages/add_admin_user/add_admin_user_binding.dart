import 'package:get/get.dart';
import 'package:hype/app/pages/add_admin_user/add_admin_user_controller.dart';

class AddAdminUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddAdminUserController>(
          () => AddAdminUserController(),
    );
  }
}
