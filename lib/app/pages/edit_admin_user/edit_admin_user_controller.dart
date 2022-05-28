import 'package:get/get.dart';

class EditAdminUserController extends GetxController{

  final dropDownValue = 'Department 1'.obs;
  final dropDownRoleValue = 'Role 1'.obs;

  void setSelected(value){
    dropDownValue.value = value;
  }
  void setSelectedRole(value){
    dropDownRoleValue.value = value;
  }

  var items = [
    'Department 1',
    'Department 2',
    'Department 3',
    'Department 4',
  ].obs;

  var rolesItem = [
    'Role 1',
    'Role 2',
    'Role 3',
    'Role 4',
  ].obs;

}