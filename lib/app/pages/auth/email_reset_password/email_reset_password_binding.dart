import 'package:get/get.dart';

import 'email_reset_password_controller.dart';

class EmailResetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmailResetPasswordController>(
      () => EmailResetPasswordController(),
    );
  }
}
