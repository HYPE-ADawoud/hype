import 'package:get/get.dart';
import 'package:hype/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _onLoad();
  }

  void _onLoad() async {
    await Future.delayed(const Duration(seconds: 5));
    _navigateNoNextPage();
  }

  void _navigateNoNextPage() {
    Get.offAllNamed(Routes.LOGIN);
  }

}
