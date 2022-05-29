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

import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseAuthPageScreen(
      pageTitle: 'Sign in',
      child: _buildBodyView(),
    );
  }

  Widget _buildBodyView() {
    return Form(
      key: controller.keyForm,
      child: Column(
        children: [

          /// email
          _buildEmailTextField(),

          Empty(height: AppDimens.paddingSize20.h,),

          /// password
          _buildPasswordTextField(),

          Empty(height: AppDimens.paddingSize20.h,),

          /// forgot password
          _buildForgotPassword(),

          Empty(height: AppDimens.paddingSize30.h,),

          /// login
          _buildLoginButton()
        ],
      ),
    );
  }



  Widget _buildEmailTextField() {
    return Obx(() {
      return TextFormField(
        enabled: !controller.loginLoading.value,
        decoration: InputDecoration(hintText: "Email",
          prefixIcon: Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(AppAssets.emailIcon),
          ),),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        onChanged: (val) => controller.userName.value = val,
        validator: RequiredValidator(errorText: 'required'),
      );
    });
  }

  Widget _buildPasswordTextField() {
    return Obx(() {
      return TextFormField(
        enabled: !controller.loginLoading.value,
        decoration: InputDecoration(
            hintText: "Password",
            prefixIcon: Padding(
              padding: const EdgeInsets.all(15),
              child: SvgPicture.asset(AppAssets.passwordIcon),
            ),
            suffixIcon: IconButton(onPressed: (){}, icon: SvgPicture.asset(AppAssets.viewIcon))),
        obscureText: true,
        textInputAction: TextInputAction.done,
        onChanged: (val) => controller.password.value = val,
        validator: RequiredValidator(errorText: 'required'),
        onEditingComplete: () => _onLogin(),
      );
    });
  }

  Widget _buildForgotPassword() {
    return Align(
      alignment: Alignment.centerLeft,
      child: TextButton(
        child: const Text("Forgot Password?"),
        onPressed: () => controller.navigateToForgotPassword(),
      ),
    );
  }

  Widget _buildLoginButton() {
    return Obx(() {
      return SizedBox(
        width: Get.width/1.5,
        child: BigBtn(
          state: controller.loginLoading.value ? BtnState.loading : BtnState.active,
          text: 'Login',
          onPressed: () => _onLogin(),
        ),
      );
    });
  }

  _onLogin() {
    controller.onLoginClick();
  }

}
