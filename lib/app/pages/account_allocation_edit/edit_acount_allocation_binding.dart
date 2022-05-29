import 'package:get/get.dart';
import 'package:hype/app/pages/account_allocation_edit/edit_acount_allocation_controller.dart';

class EditAccountAllocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditAccountAllocationController>(() => EditAccountAllocationController());
  }
}
