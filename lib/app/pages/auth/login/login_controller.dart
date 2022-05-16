import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/action_center/action_center.dart';
import 'package:hype/app/common/managers/api/auth/_model/login_model.dart';
import 'package:hype/app/common/managers/api/auth/_model/user_data.dart';
import 'package:hype/app/common/managers/api/auth/i_auth_api_manager.dart';
import 'package:hype/app/common/managers/cache/i_cache_manager.dart';
import 'package:hype/app/common/managers/navigation_manager.dart';
import 'package:hype/app/common/models/enums/user_type.dart';
import 'package:hype/app/routes/app_pages.dart';
import 'package:hype/setup.dart';
import 'package:hype/utils/parse_token.dart';
import 'package:hype/utils/ui/dialog/overlay_helper.dart';

class LoginController extends GetxController {

  final keyForm = GlobalKey<FormState>();
  var userName = ''.obs;
  var password = ''.obs;
  var loginLoading = false.obs;

  final _action = ActionCenter();
  final _apiManager = DI.find<IAuthApiManager>();
  final _cacheManager = DI.find<ICacheManager>();

  onLoginClick() {
    keyForm.currentState?.save();
    if (keyForm.currentState!.validate()) {
      callLoginApi();
    }
  }

  void navigateToForgotPassword() {

  }

  void navigateToHomePage() {
    Get.offAllNamed(Routes.HOME);
  }

  // region ===== api

  void callLoginApi() async {
    loginLoading.value = true;
    LoginResponse? result;
    //
    var success = await _action.execute(() async {
      result = await _apiManager.login(LoginRequest(email: userName.value, password: password.value));
    }, checkConnection: true);
    //
    loginLoading.value = false;
    //
    if (success) {
      if (result != null) {

        if (result!.token == null || result!.token!.isEmpty) {
          OverlayHelper.showWarningToast('Unhandled Error Action');
          return;
        }

        // parse token to user data
        UserData userData = UserData()..deserialize(jsonEncode(parseJwt(result!.token!)));
        // save user data
        await _cacheManager.setUserData(userData);
        // navigate to next page
        NavigationManager().navigateToHomePage(userData.module == '1' ? UserType.admin : UserType.user);
      } else {
        OverlayHelper.showErrorToast('invalid username or password');
      }
    }else{
      OverlayHelper.showErrorToast('Unhandled Error Action');
    }
  }

// endregion
}
