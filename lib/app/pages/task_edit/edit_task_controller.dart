import 'package:get/get.dart';

class EditTaskController extends GetxController{
  final dropDownStatus = 'Status 1'.obs;

  void setSelectedClientType(value){
    dropDownStatus.value = value;
  }
  var statusItem = [
    'Status 1',
    'Status 2',
    'Status 3',
  ].obs;

}