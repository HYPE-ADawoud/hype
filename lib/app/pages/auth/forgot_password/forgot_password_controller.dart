import 'package:get/get.dart';
import 'package:hype/app/common/action_center/action_center.dart';
import 'package:hype/app/routes/app_pages.dart';

class ForgotPasswordController extends GetxController {

  String? email;
  var loginLoading = false.obs;

  final _action = ActionCenter();


  void onNextClick() {

    navigateToEmailVerificationCode();
  }

  void navigateToEmailVerificationCode() {
    Get.toNamed(Routes.VERIFY_AUTH);
  }

  void navigateToLoginPage() {

  }

}
