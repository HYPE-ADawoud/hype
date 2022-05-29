import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/big_btn.dart';
import 'package:hype/app/pages/auth/base_auth_page_screen.dart';
import 'package:hype/utils/ui/ui_lib.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'verify_email_controller.dart';

class VerifyEmailView extends GetView<VerifyMobileNoController> {
  VerifyEmailView({Key? key}) : super(key: key);

  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BaseAuthPageScreen(
      pageTitle: 'Forgot password',
      pageSubTitle: 'A verification code has been sent.\nPlease enter it to verify your account',
      child: _buildBodyView(),
    );
  }

  Widget _buildBodyView() {
    return Form(
      key: _keyForm,
      child: Column(
        children: [

          Empty(height: AppDimens.paddingSize60.h,),

          _buildCodeDesign(),

          Empty(height: AppDimens.paddingSize50.h,),

          /// confirm
          _buildContinueButton()
        ],
      ),
    );
  }

  Center _buildCodeDesign() {
    return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildPinCode(),
                  _buildErrorHint(),
                ],
              ),
            );
  }


  Widget _buildPinCode() {
    return Form(
      key: controller.formKey,
      child: PinCodeTextField(
        length: 4,
        obscureText: false,
        textStyle: TextStyle(color: AppColors.current.text),
        animationType: AnimationType.fade,
        mainAxisAlignment: MainAxisAlignment.center,

        pinTheme: PinTheme(
          shape: PinCodeFieldShape.underline,
          fieldHeight: 50,
          fieldWidth: 40,
          activeFillColor: AppColors.current.text,
          selectedColor: AppColors.current.text,
          disabledColor: AppColors.current.dimmed,
          inactiveColor: AppColors.current.dimmed,
          activeColor: AppColors.current.text,
          inactiveFillColor: AppColors.current.dimmed,
          fieldOuterPadding: const EdgeInsets.symmetric(horizontal: AppDimens.paddingSize8)
        ),
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.transparent,
        enableActiveFill: false,
        cursorColor: AppColors.current.text,
        onCompleted: (v) => controller.code = v,
        onChanged: (value) => controller.code = value,
        beforeTextPaste: (text) {

          return true;
        }, appContext: Get.context!,
      ),
    );
  }

  Widget _buildErrorHint() {
    return Obx(() {
      return Container(
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          controller.hasError.value ? 'required' : "",
          style:  TextStyle(
              color: AppColors.current.error,
              fontSize: AppDimens.fontSizeSmallXX,
              fontWeight: FontWeight.w400),
        ),
      );
    });
  }

  _buildContinueButton() {
    return BigBtn(
      state: controller.loginLoading.value ? BtnState.loading : BtnState.active,
      text: 'Continue',
      onPressed: () => _onConfirm(),
    );
  }

  _onConfirm() {
    _keyForm.currentState?.save();
    if (_keyForm.currentState!.validate()) {
      controller.onConfirmClick();
    }
  }

}
