import 'package:get/get.dart';
import 'package:hype/app/pages/account_allocation_add/add_acount_allocation_controller.dart';

class AddAccountAllocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddAccountAllocationController>(() => AddAccountAllocationController());
  }
}
