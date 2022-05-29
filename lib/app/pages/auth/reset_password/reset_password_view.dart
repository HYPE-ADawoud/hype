import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/big_btn.dart';
import 'package:hype/app/pages/auth/base_auth_page_screen.dart';
import 'package:hype/utils/ui/empty.dart';

import 'reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  ResetPasswordView({Key? key}) : super(key: key);

  final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BaseAuthPageScreen(
      pageTitle: 'Reset password',
      child: _buildBodyView(),
    );
  }

  Widget _buildBodyView() {
    return Form(
      key: _keyForm,
      child: Column(
        children: [
          Empty(height: AppDimens.paddingSize20.h,),

          /// new password
          _buildNewPasswordTextField(),

          Empty(height: AppDimens.paddingSize20.h,),

          /// confirm new password
          _buildConfirmNewPasswordTextField(),

          Empty(height: AppDimens.paddingSize40.h,),

          /// confirm
          _buildConfirmPasswordButton()
        ],
      ),
    );
  }

  TextFormField _buildNewPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'New password',
          prefixIcon: Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(AppAssets.passwordIcon),
          ),
          suffixIcon: IconButton(onPressed: () {}, icon: SvgPicture.asset(AppAssets.viewIcon))),
      obscureText: true,
      textInputAction: TextInputAction.next,
      onChanged: (val) => controller.newPassword = val,
      validator: RequiredValidator(errorText: 'required'),
    );
  }

  TextFormField _buildConfirmNewPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Confirm new password',
          prefixIcon: Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(AppAssets.passwordIcon),
          ),
          suffixIcon: IconButton(onPressed: () {}, icon: SvgPicture.asset(AppAssets.viewIcon))),
      obscureText: true,
      textInputAction: TextInputAction.done,
      onChanged: (val) => controller.confirmNewPassword = val,
      validator: RequiredValidator(errorText: 'required'),
      onEditingComplete: () => _onConfirm(),
    );
  }

  _buildConfirmPasswordButton() {
    return BigBtn(
      state: controller.loginLoading.value ? BtnState.loading : BtnState.active,
      text: 'Done',
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
