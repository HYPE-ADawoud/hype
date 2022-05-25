import 'package:get/get.dart';

class AddAccountAllocationController extends GetxController{


  final dropDownNumberOfPostsValue = 'Number of posts 1'.obs;
  final dropDownVFXValue = 'VFX 1'.obs;
  final dropDownStoriesValue = 'Stories 1'.obs;
  final dropDownPhotographyValue = 'Photography 1'.obs;
  final dropDownVideographyValue = 'Videography 1'.obs;
  final dropDownAssignedToAssistantManagerValue = 'Assigned to Assistant manager 1'.obs;
  final dropDownAssignedToPhotographyValue = 'Assigned to Photography 1'.obs;
  final dropDownPhAssignedToMotionGraphicsVFXValue = 'Assigned to Motion Graphics & VFX 1'.obs;
  final dropDownAssignedToCreativeCopyrightValue = 'Assigned to Creative Copyright 1'.obs;
  final dropDownAssignedToPhotoEditingValue = 'Assigned to Photo Editing  1'.obs;
  final dropDownAssignedToVideoEdittingValue = 'Assigned to Video Editting 1'.obs;
  final dropDownAssignedToArtDepartmentValue = 'Assigned to Art Department 1'.obs;
  final dropDownAssignedToMediaBuyingValue = 'Assigned to Media Buying 1'.obs;
  final dropDownAssignedToDevelopmentTeam = 'Assigned to Development Team 1'.obs;
  final dropDownAssignedToMarketing = 'Assigned to Marketing 1'.obs;
  final dropDownAssignedToModeratorValue = 'Assigned to Moderator 1'.obs;

// Default Radio Button Selected Item When App Starts.
  final radioButtonItem = 'Yes'.obs;

  // Group Value for Radio Button.
  final id = 1.obs;

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
  void setSelectedVideography(value){
    dropDownVideographyValue.value = value;
  }
  void setSelectedAssignedToAssistantManager(value){
    dropDownAssignedToAssistantManagerValue.value = value;
  }
  void setSelectedAssignedToPhotography(value){
    dropDownAssignedToPhotographyValue.value = value;
  }

  void setSelectedAssignedToMotionGraphicsVFX(value){
    dropDownPhAssignedToMotionGraphicsVFXValue.value = value;
  }

  void setSelectedAssignedToCreativeCopyright(value){
    dropDownAssignedToCreativeCopyrightValue.value = value;
  }

  void setSelectedAssignedToPhotoEditing (value){
    dropDownAssignedToPhotoEditingValue.value = value;
  }
  void setSelectedAssignedToVideoEditting(value){
    dropDownAssignedToVideoEdittingValue.value = value;
  }

  void setSelectedAssignedToArtDepartment(value){
    dropDownAssignedToArtDepartmentValue.value = value;
  }
  void setSelectedAssignedToMediaBuying(value){
    dropDownAssignedToMediaBuyingValue.value = value;
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

 ///////////////

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

  var itemsAssignedToAssistantManager = [
    'Assigned to Assistant manager 1',
    'Assigned to Assistant manager 2',
    'Assigned to Assistant manager 3',
    'Assigned to Assistant manager 4',
  ].obs;

  var itemsAssignedToPhotography = [
    'Assigned to Photography 1',
    'Assigned to Photography 2',
    'Assigned to Photography 3',
    'Assigned to Photography 4',
  ].obs;



  var itemsAssignedToMotionGraphicsVFX = [
    'Assigned to Motion Graphics & VFX 1',
    'Assigned to Motion Graphics & VFX 2',
    'Assigned to Motion Graphics & VFX 3',
    'Assigned to Motion Graphics & VFX 4',
  ].obs;

  var itemsAssignedToCreativeCopyright = [
    'Assigned to Creative Copyright 1',
    'Assigned to Creative Copyright 2',
    'Assigned to Creative Copyright 3',
    'Assigned to Creative Copyright 4',
  ].obs;

  var itemsAssignedToPhotoEditing  = [
    'Assigned to Photo Editing  1',
    'Assigned to Photo Editing  2',
    'Assigned to Photo Editing  3',
    'Assigned to Photo Editing  4',
  ].obs;

  var itemsAssignedToVideoEditting = [
    'Assigned to Video Editting 1',
    'Assigned to Video Editting 2',
    'Assigned to Video Editting 3',
    'Assigned to Video Editting 4',
  ].obs;


  var itemsAssignedToArtDepartment = [
    'Assigned to Art Department 1',
    'Assigned to Art Department 2',
    'Assigned to Art Department 3',
    'Assigned to Art Department 4',
  ].obs;

  var itemsAssignedToMediaBuying = [
    'Assigned to Media Buying 1',
    'Assigned to Media Buying 2',
    'Assigned to Media Buying 3',
    'Assigned to Media Buying 4',
  ].obs;

  var itemsAssignedToDevelopmentTeam = [
    'Assigned to Development Team 1',
    'Assigned to Development Team 2',
    'Assigned to Development Team 3',
    'Assigned to Development Team 4',
  ].obs;


  var itemsAssignedToMarketing = [
    'Assigned to Marketing 1',
    'Assigned to Marketing 2',
    'Assigned to Marketing 3',
    'Assigned to Marketing 4',
  ].obs;

  var itemsAssignedToModerator = [
    'Assigned to Moderator 1',
    'Assigned to Moderator 2',
    'Assigned to Moderator 3',
    'Assigned to Moderator 4',
  ].obs;

}