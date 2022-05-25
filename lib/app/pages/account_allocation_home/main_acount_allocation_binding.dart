import 'package:get/get.dart';
import 'package:hype/app/pages/account_allocation_home/main_acount_allocation_controller.dart';

class MainAccountAllocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainAccountAllocationController>(() => MainAccountAllocationController());
  }
}
