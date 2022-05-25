import 'package:get/get.dart';

class AddAccountAllocationController extends GetxController{
  final dropDownNumberOfPostsValue = 'Number of posts 1'.obs;
  final dropDownVFXValue = 'VFX 1'.obs;
  final dropDownStoriesValue = 'Stories 1'.obs;
  final dropDownPhotographyValue = 'Photography 1'.obs;
  final dropDownVideographyValue = 'Videography 1'.obs;
  final dropDownAssignedToDevelopmentTeam = 'Assigned to Development Team 1'.obs;
  final dropDownAssignedToMarketing = 'Assigned to Marketing 1'.obs;
  final dropDownAssignedToModeratorValue = 'Assigned to Moderator 1'.obs;
  ///////////////////////////////////
  void setSelectedNumberOfPosts(value){
    dropDownNumberOfPostsValue.value = value;
  }
  void setSelectedVFX(value){
    dropDownVFXValue.value = value;
  }
  void setSelectedStories(value){
    dropDownStoriesValue.value = value;
  }
  void setSelectedPhotography(value){
    dropDownPhotographyValue.value = value;
  }
  void setSelectedAssignedToDevelopmentTeam(value){
    dropDownAssignedToDevelopmentTeam.value = value;
  }
  void setSelectedAssignedToMarketing(value){
    dropDownAssignedToMarketing.value = value;
  }
  void setSelectedAssignedToModerator(value){
    dropDownAssignedToModeratorValue.value = value;
  }
  var itemsNumberOfPosts = [
    'Number of posts 1',
    'Number of posts 2',
    'Number of posts 3',
    'Number of posts 4',
  ].obs;

  var itemsVFX = [
    'VFX 1',
    'VFX 2',
    'VFX 3',
    'VFX 4',
  ].obs;

  var itemsStories = [
    'Stories 1',
    'Stories 2',
    'Stories 3',
    'Stories 4',
  ].obs;

  var itemsPhotography = [
    'Photography 1',
    'Photography 2',
    'Photography 3',
    'Photography 4',
  ].obs;

  var itemsVideography = [
    'Videography 1',
    'Videography 2',
    'Videography 3',
    'Videography 4',
  ].obs;

  var itemsAssignedToModerator = [
    'Assigned to Moderator 1',
    'Assigned to Moderator 2',
    'Assigned to Moderator 3',
    'Assigned to Moderator 4',
  ].obs;
  var itemsAssignedToMarketing = [
    'Assigned to Marketing 1',
    'Assigned to Marketing 2',
    'Assigned to Marketing 3',
    'Assigned to Marketing 4',
  ].obs;
}