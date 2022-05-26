import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/action_sheet_indicator.dart';
import 'package:hype/app/common/widgets/big_btn.dart';
import 'package:hype/utils/ui/empty.dart';

import 'forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  ForgotPasswordView({Key? key}) : super(key: key);
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
      padding: AppDimens.pagePadding,
      child: Form(
        key: _keyForm,
        child: SingleChildScrollView(
          child: Column(

            children: [
              /// action sheet indicator
              const ActionSheetIndicator(),

              Empty(height: 20,),

              _buildToolbar(),

              Empty(height: 20,),

              /// mobile no
              _buildMobileNo(),

              Empty(height: 20,),

              _buildRememberPassword(),

              Empty(height: 20,),

              /// send code.
              _buildSendCode()
            ],
          ),
        ),
      ),
    );
  }

  BigBtn _buildSendCode() {
    return BigBtn(
            state: controller.loginLoading.value? BtnState.loading: BtnState.active,
            text: 'Send Code',
            onPressed: () => _onSendCode(),
          );
  }

  TextButton _buildRememberPassword() {
    return TextButton(
            child: const Text('Are you remember password?'),
            onPressed: ()=> controller.navigateToLoginPage(),
          );
  }

  TextFormField _buildMobileNo() {
    return TextFormField(
            decoration: const InputDecoration(hintText: 'Mobile number'),
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.done,
      onChanged: (val)=> controller.mobileNo=val,
            validator: RequiredValidator(errorText: 'required'),
            onEditingComplete: ()=> _onSendCode(),
          );
  }

  Row _buildToolbar() {
    return Row(
            children: [
              /// back button
              IconButton(onPressed:()=> controller.navigateToLoginPage(), icon: Icon(Icons.arrow_back_ios, color: AppColors.current.accent, size: 20,)),

              /// title
              Text(
                'Please enter mobile number',
                style: TextStyle(fontSize: Get.textTheme.headline3?.fontSize, color: AppColors.current.accent, fontWeight: FontWeight.bold),
              ),
            ],
          );
  }

  _onSendCode(){
    _keyForm.currentState?.save();
    if(_keyForm.currentState!.validate()){
      controller.onSendCodeClick();
    }
  }
}
