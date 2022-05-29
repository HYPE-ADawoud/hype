import 'package:get/get.dart';
import 'package:hype/app/routes/app_pages.dart';

class EmailResetPasswordController extends GetxController {

  String? email;
  var loginLoading = false.obs;

  void onSendClick() {
    Get.toNamed(Routes.RESET_PASSWORD);
  }


}
