import 'package:get/get.dart';
import 'package:hype/app/pages/account_allocation/acount_allocation_controller.dart';

class AccountAllocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountAllocationController>(() => AccountAllocationController());
  }
}
