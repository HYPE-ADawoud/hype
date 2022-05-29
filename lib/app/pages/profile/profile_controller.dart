import 'package:get/get.dart';
import 'package:hype/app/routes/app_pages.dart';

class ProfileController extends GetxController {
  var loginLoading = false.obs;

  void navigateToResetPasswordView() {
    Get.toNamed(Routes.EMAIL_RESET_PASSWORD);
  }
}
