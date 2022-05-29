import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/action_center/action_center.dart';
import 'package:hype/app/routes/app_pages.dart';
import 'package:hype/services/firebase_phone_auth/i_firebase_phone_auth.dart';
import 'package:hype/setup.dart';

class VerifyMobileNoController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final _action = ActionCenter();

  final _fPhoneAuthService = DI.find<IFirebasePhoneAuth>();

  String? code;

  var loginLoading = false.obs;
  var verifyLoading = false.obs;
  var resendLoading = false.obs;
  var hasError = false.obs;


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onVerifyBtnPressed() {
    if (code == null || code!.isEmpty || code?.length != 6) {
      hasError.value = true;
      return;
    }
    verifyLoading.value = true;
    _fPhoneAuthService.verifySMSCode(
        code: code!,
        onCodeVerified: (result) {
          verifyLoading.value = false;
          if (result != null && result is bool && result) {
            Get.back(result: true);
          }
        });
  }


  void onConfirmClick() {

    navigateToEnterNewPassword();
  }

  void navigateToEnterNewPassword(){
      Get.toNamed(Routes.NEW_PASSWORD);
  }

  void backToForgotPassword(){

  }
}
