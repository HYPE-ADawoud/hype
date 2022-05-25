import 'package:get/get.dart';

class DepartmentController extends GetxController{

RxList departments = [
  Department(
    name: 'Ahmed Dawood',
    jobTitle: 'Moderator'
  ),
  Department(
      name: 'Laila ahmed',
      jobTitle: 'Marketing'
  ),
  Department(
      name: 'Beshoy wagdy',
      jobTitle: 'Development Team'
  ),
  Department(
      name: 'Ahmed Fawzi',
      jobTitle: 'Media Buying'
  ),
].obs;
}


class Department{

  String name;
  String jobTitle;

  Department({required this.name,required this.jobTitle});

}