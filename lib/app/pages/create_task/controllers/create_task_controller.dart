import 'package:get/get.dart';

class CreateTaskController extends GetxController {
  //TODO: Implement CreateTaskController

  final dropDownClientType = 'Type Of Client 1'.obs;
  final dropDownClientName = 'Client 1'.obs;
  final dropDownDepartmentBrief = 'Department 1'.obs;
  final dropDownTypeOfBrief = 'Type Of Brief 1'.obs;
  final dropDownAssignedToBriefs = 'Assigned To 1'.obs;
  final dropDownPlatform = 'Platform 1'.obs;
  final dropDownSize = 'Size 1'.obs;
  final dropDownFormat = 'Format 1'.obs;

  void setSelectedClientType(value){
    dropDownClientType.value = value;
  }

  void setSelectedClientName(value){
    dropDownClientName.value = value;
  }
  void setSelectedDepartmentBrief(value){
    dropDownDepartmentBrief.value = value;
  }
  void setSelectedTypeOfBrief(value){
    dropDownTypeOfBrief.value = value;
  }
  void setSelectedAssignedToBriefs(value){
    dropDownAssignedToBriefs.value = value;
  }

  void setSelectedPlatform(value){
    dropDownPlatform.value = value;
  }

  void setSelectedSize(value){
    dropDownSize.value = value;
  }
  void setSelectedFormat(value){
    dropDownFormat.value = value;
  }

  var clientsType = [
    'Type Of Client 1',
    'Type Of Client 2',
    'Type Of Client 3',
  ].obs;
  var clientsName = [
    'Client 1',
    'Client 2',
    'Client 3',
  ].obs;
  var departmentBrief = [
    'Department 1',
    'Department 2',
    'Department 3',
  ].obs;
  var typeOfBrief = [
    'Type Of Brief 1',
    'Type Of Brief 2',
    'Type Of Brief 3',
  ].obs;
  var assignedTo = [
    'Assigned To 1',
    'Assigned To 2',
    'Assigned To 3',
  ].obs;
  var platforms = [
    'Platform 1',
    'Platform 2',
    'Platform 3',
  ].obs;

  var sizes = [
      'Size 1',
      'Size 2',
      'Size 3',
  ].obs;

  var formats = [
    'Format 1',
    'Format 2',
    'Format 3',
  ].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
