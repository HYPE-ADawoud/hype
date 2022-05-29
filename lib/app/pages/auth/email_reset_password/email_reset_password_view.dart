import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/big_btn.dart';
import 'package:hype/app/pages/auth/base_auth_page_screen.dart';
import 'package:hype/utils/ui/ui_lib.dart';

import 'email_reset_password_controller.dart';

class EmailResetPasswordView extends GetView<EmailResetPasswordController> {

  final _keyForm = GlobalKey<FormState>();

   EmailResetPasswordView({Key? key}) : super(key: key);

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
      child: SingleChildScrollView(
        child: Column(

          children: [

            /// email
            _buildEmail(),


            Empty(height: AppDimens.paddingSize100,),

            /// send code.
            _buildNext()
          ],
        ),
      ),
    );
  }

  BigBtn _buildNext() {
    return BigBtn(
      state: controller.loginLoading.value? BtnState.loading: BtnState.active,
      text: 'Send',
      onPressed: () => _onSendButtonClick(),
    );
  }

  TextFormField _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Email',
          prefixIcon: Padding(padding: const EdgeInsets.all(15), child: SvgPicture.asset(AppAssets.emailIcon),)),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
      onChanged: (val) => controller.email = val,
      validator: RequiredValidator(errorText: 'required'),
      onEditingComplete: () => _onSendButtonClick(),
    );
  }

  _onSendButtonClick(){
    _keyForm.currentState?.save();
    if(_keyForm.currentState!.validate()){
      controller.onSendClick();
    }
  }
}
