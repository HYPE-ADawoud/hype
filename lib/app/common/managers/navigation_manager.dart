import 'package:get/get.dart';
import 'package:hype/app/common/models/enums/user_type.dart';
import 'package:hype/app/routes/app_pages.dart';

class NavigationManager{

  static final NavigationManager _singleton = NavigationManager._internal();
  NavigationManager._internal();
  factory NavigationManager() {
    return _singleton;
  }

  void navigateToHomePage(UserType userType) {
    switch (userType) {
      case UserType.admin:
        Get.offAllNamed(Routes.DIGITAL_POINTER);
        break;
      case UserType.user:
        Get.offAllNamed(Routes.HOME);
        break;
    }
  }

}