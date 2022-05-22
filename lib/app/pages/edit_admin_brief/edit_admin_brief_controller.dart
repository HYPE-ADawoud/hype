import 'package:get/get.dart';

class EditAdminBriefController extends GetxController{

  final dropDownResponsibleValue = 'Responsible Department 1'.obs;

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