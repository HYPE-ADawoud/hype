import 'package:get/get.dart';

class EditAdminUserController extends GetxController{
  final dropDownRoleValue = 'Role 1'.obs;
  final dropDownDepartmentValue = 'Department 1'.obs;
  void setSelectedRole(value){
    dropDownRoleValue.value = value;
  }
  void setSelectedDepartment(value){
    dropDownRoleValue.value = value;
  }
  var itemsRole = [
    'Role 1',
    'Role 2',
    'Role 3',
    'Role 4',
  ].obs;
  var itemsDepartment = [
    'Department 1',
    'Department 2',
    'Department 3',
    'Department 4',
  ].obs;
}