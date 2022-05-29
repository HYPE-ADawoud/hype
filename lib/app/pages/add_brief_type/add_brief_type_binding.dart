import 'package:get/get.dart';
import 'package:hype/app/pages/add_brief_type/add_brief_type_controller.dart';

class AddBriefTypeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AddBriefTypeController>(() => AddBriefTypeController());
  }

}