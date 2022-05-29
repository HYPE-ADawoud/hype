import 'package:get/get.dart';
import 'package:hype/app/common/action_center/action_center.dart';

class ResetPasswordController extends GetxController {
  String? oldPassword, newPassword, confirmNewPassword;
  var loginLoading = false.obs;

  final _action = ActionCenter();


  void onConfirmClick() {

  }
}
