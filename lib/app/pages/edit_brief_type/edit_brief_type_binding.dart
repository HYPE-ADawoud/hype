import 'package:get/get.dart';
import 'package:hype/app/pages/edit_brief_type/edit_brief_type_controller.dart';

class EditBriefTypeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<EditBriefTypeController>(() => EditBriefTypeController());
  }

}