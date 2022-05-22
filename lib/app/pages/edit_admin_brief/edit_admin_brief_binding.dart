import 'package:get/get.dart';
import 'package:hype/app/pages/edit_admin_brief/edit_admin_brief_controller.dart';

class EditAdminBriefBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<EditAdminBriefController>(() => EditAdminBriefController());
  }

}