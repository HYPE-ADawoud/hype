import 'package:get/get.dart';
import 'package:hype/app/common/action_center/action_center.dart';
import 'package:hype/app/pages/splash/splash_controller.dart';

class ForgotPasswordController extends GetxController {

  String? mobileNo;
  var loginLoading = false.obs;

  final _action = ActionCenter();
  final _splashController = Get.find<SplashController>();


  void onSendCodeClick() {

    navigateToVerifyMobileNo();
  }

  void navigateToVerifyMobileNo() {

  }

  void navigateToLoginPage() {

  }

}
