import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/action_sheet_indicator.dart';
import 'package:hype/app/common/widgets/big_btn.dart';
import 'package:hype/utils/ui/empty.dart';

import 'new_password_controller.dart';

class NewPasswordView extends  GetView<NewPasswordController> {
  NewPasswordView({Key? key}) : super(key: key);
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: _buildBodyView(),
    );
  }

  Widget _buildBodyView() {
    return Padding(
      padding: AppDims.pagePadding,
      child: Form(
        key: _keyForm,
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// action sheet indicator
              const ActionSheetIndicator(),

              Empty(height: 20,),

              /// toolbar
              _buildToolbar(),

              Empty(height: 20,),

              /// new password
              _buildNewPasswordTextField(),

              Empty(height: 10,),

              /// confirm new password
              _buildConfirmNewPasswordTextField(),

              Empty(height: 30,),

              /// confirm
              _buildConfirmPasswordButton()
            ],
          ),
        ),
      ),
    );
  }

  Row _buildToolbar() {
    return Row(
      children: [
        /// back button
        IconButton(onPressed:()=> controller.navigateForgotPassword(), icon: Icon(Icons.arrow_back_ios, color: AppColors.current.accent, size: 20,)),

        Text(
          'Enter new password',
          style: TextStyle(fontSize: Get.textTheme.headline3?.fontSize, color: AppColors.current.accent, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  TextFormField _buildNewPasswordTextField() {
    return TextFormField(
      decoration: const InputDecoration(hintText: 'New password',),
      obscureText: true,
      textInputAction: TextInputAction.next,
      onChanged: (val) => controller.newPassword=val,
      validator: RequiredValidator(errorText: 'required'),
    );
  }

  TextFormField _buildConfirmNewPasswordTextField() {
    return TextFormField(

      decoration: const InputDecoration(hintText: 'Confirm new password',),
      obscureText: true,
      textInputAction: TextInputAction.done,
      onChanged: (val) => controller.confirmNewPassword=val,
      validator: RequiredValidator(errorText: 'required'),
      onEditingComplete: ()=> _onConfirm(),
    );
  }

  _buildConfirmPasswordButton(){
    return BigBtn(
      state: controller.loginLoading.value? BtnState.loading: BtnState.active,
      text: 'confirm',
      onPressed: () => _onConfirm(),
    );
  }

  _onConfirm(){
    _keyForm.currentState?.save();
    if(_keyForm.currentState!.validate()){
      controller.onConfirmClick();
    }
  }
}
