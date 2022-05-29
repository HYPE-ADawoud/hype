import 'package:get/get.dart';

class EditBriefTypeController extends GetxController{

  final isVisible = false.obs;
  final dropDownResponsibleValue = 'Responsible Department 1'.obs;

  void showSubTask() {
    isVisible.value = !isVisible.value;
  }
  void setSelectedRole(value){
    dropDownResponsibleValue.value = value;
  }

  var itemsResponsible = [
    'Responsible Department 1',
    'Responsible Department 2',
    'Responsible Department 3',
    'Responsible Department 4',
  ].obs;

}