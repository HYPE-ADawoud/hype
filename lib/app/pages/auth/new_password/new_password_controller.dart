import 'package:get/get.dart';
import 'package:hype/app/common/action_center/action_center.dart';
import 'package:hype/app/pages/splash/splash_controller.dart';

class NewPasswordController extends GetxController {
  String? newPassword, confirmNewPassword;
  var loginLoading = false.obs;

  final _action = ActionCenter();
  final _splashController = Get.find<SplashController>();

  navigateForgotPassword() {

  }

  navigateToHomePage(){

  }

  void onConfirmClick() {
    //
    navigateToHomePage();
  }
  
}
