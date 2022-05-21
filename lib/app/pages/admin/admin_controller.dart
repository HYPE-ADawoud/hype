import 'package:get/get.dart';

class AdminController extends GetxController{

  final dropDownValue = 'Responsible Department 1'.obs;

  void setSelected(value){
    dropDownValue.value = value;
  }

  var items = [
    'Responsible Department 1',
    'Responsible Department 2',
    'Responsible Department 3',
    'Responsible Department 4',
  ].obs;

}