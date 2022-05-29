import 'package:get/get.dart';

class EditAccountAllocationController extends GetxController{
  final dropDownClientValue = 'Client 1'.obs;
  final dropDownMarketingDepartmentValue = 'Marketing Department 1'.obs;
  final dropDownSecondaryValue = 'Secondary 1'.obs;
  final dropDownContentCopyWriteValue = 'Content \ copy-write 1'.obs;
  final dropDownModeratorValue = 'Moderator 1'.obs;
  final dropDownArtsTeamValue = 'Arts team 1'.obs;
  final dropDownMotionValue = 'Motion 1'.obs;
  final dropDownVideoEditingValue = 'Video Editing 1'.obs;
  final dropDownStatusValue = 'Status 1'.obs;

  void setSelectedClient(value){
    dropDownClientValue.value = value;
  }
  void setSelectedMarketingDepartment(value){
    dropDownMarketingDepartmentValue.value = value;
  }
  void setSelectedSecondary(value){
    dropDownSecondaryValue.value = value;
  }
  void setSelectedContentCopyWrite(value){
    dropDownContentCopyWriteValue.value = value;
  }

  void setSelectedModerator(value){
    dropDownModeratorValue.value = value;
  }
  void setSelectedArtsTeam(value){
    dropDownArtsTeamValue.value = value;
  }
  void setSelectedMotion(value){
    dropDownMotionValue.value = value;
  }
  void setSelectedVideoEditing(value){
    dropDownVideoEditingValue.value = value;
  }
  void setSelectedStatus(value){
    dropDownStatusValue.value = value;
  }

  var itemsClient = [
    'Client 1',
    'Client 2',
    'Client 3',
    'Client 4',
  ].obs;
  var itemsMarketingDepartment = [
    'Marketing Department 1',
    'Marketing Department 2',
    'Marketing Department 3',
    'Marketing Department 4',
  ].obs;
  var itemsSecondary = [
    'Secondary 1',
    'Secondary 2',
    'Secondary 3',
    'Secondary 4',
  ].obs;
  var itemsContentCopyWrite = [
    'Content \ copy-write 1',
    'Content \ copy-write 2',
    'Content \ copy-write 3',
    'Content \ copy-write 4',
  ].obs;

  var itemsModerator = [
    'Moderator 1',
    'Moderator 2',
    'Moderator 3',
    'Moderator 4',
  ].obs;
  var itemsArtsTeam = [
    'Arts team 1',
    'Arts team 2',
    'Arts team 3',
    'Arts team 4',
  ].obs;
  var itemsMotion = [
    'Motion 1',
    'Motion 2',
    'Motion 3',
    'Motion 4',
  ].obs;
  var itemsVideoEditing = [
    'Video Editing 1',
    'Video Editing 2',
    'Video Editing 3',
    'Video Editing 4',
  ].obs;
  var itemsStatus = [
    'Status 1',
    'Status 2',
    'Status 3',
    'Status 4',
  ].obs;
}