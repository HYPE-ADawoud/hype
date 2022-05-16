import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/big_btn.dart';
import 'package:hype/utils/ui/empty.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.current.background,
      body: _buildBodyView(),
    );
  }

  Widget _buildBodyView() {
    return Form(
      key: controller.keyForm,
      child: SingleChildScrollView(
        padding: AppDims.pagePadding,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Empty(height: AppDims.paddingSize20,),

              /// logo
              _buildToolbar,

              Empty(height: AppDims.paddingSize20,),

              /// mobile no
              _buildUsernameTextField(),

              Empty(height: AppDims.paddingSize10,),

              /// password
              _buildPasswordTextField(),

              Empty(height: AppDims.paddingSize10,),

              /// forgot password
              _buildForgotPassword(),

              Empty(height: AppDims.paddingSize20,),

              /// login
              _buildLoginButton()
            ],
          ),
        ),
      ),
    );
  }

  get _buildToolbar {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Center(child: SvgPicture.asset(AppAssets.hypeLogo, width: 175.w, height: 58.h,)),
    );
  }

  Widget _buildUsernameTextField() {
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

  TextButton _buildForgotPassword() {
    return TextButton(
      child: const Text("Forgot Password?"),
      onPressed: () => controller.navigateToForgotPassword(),
    );
  }

  Widget _buildLoginButton() {
    return Obx(() {
      return BigBtn(
        state: controller.loginLoading.value ? BtnState.loading : BtnState.active,
        text: 'Login',
        onPressed: () => _onLogin(),
      );
    });
  }

  _onLogin() {
    controller.onLoginClick();
  }

}
