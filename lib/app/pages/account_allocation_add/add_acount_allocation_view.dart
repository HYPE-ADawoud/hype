import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/account_allocation_add/add_acount_allocation_controller.dart';
import 'package:hype/app/routes/app_pages.dart';
import 'package:hype/utils/ui/empty.dart';

class AddAccountAllocationView extends StatelessWidget {
  final AddAccountAllocationController controller = Get.find();
  AddAccountAllocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.current.neutral,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Column(
        children: [
          AppToolbar(
            title: 'Add Account',
            drawerCallBack: () {},
          ),
          _buildBodyView(),
        ],
      ),
    );
  }

  Widget _buildBodyView() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: AppColors.current.primary,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTextFormClientName(),
              _buildNumberOfPosts(),
              _buildVFX(),
              _buildStories(),
              _buildModeration(),
              _buildPhotography(),
              _buildVideography(),
              _buildMediaBuying(),
              _buildTextFormBrief(),
              _buildAssignedToAssistantManager(),
              _buildAssignedToPhotography(),
              _buildAssignedToMotionGraphicsVFX(),
              _buildAssignedToCreativeCopyright(),
              _buildAssignedToPhotoEditing(),
              _buildAssignedToVideoEditting(),
              _buildAssignedToAssignedArtDepartment(),
              _buildAssignedToMediaBuying(),
              _buildAssignedToDevelopmentTeam(),
              _buildAssignedToMarketing(),
              _buildAssignedToModerator(),
              _buildSubmitButton(),
              _buildLine(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormClientName() {
    return Padding(
      padding: EdgeInsets.only(
        top: 16.h,
        bottom: 8.h,
        left: 25.h,
        right: 25.h,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: AppColors.current.dimmedLightX,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: 'Client Name',
          hintStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: AppDimens.fontSizeMediumX,
            color: AppColors.current.dimmedX,
          ),
        ),
      ),
    );
  }
  Widget _buildNumberOfPosts() {
    return Obx(
          () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX, borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownNumberOfPostsValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsNumberOfPosts.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w600,
                          fontSize: AppDimens.fontSizeMedium.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedNumberOfPosts(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildVFX() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX, borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownVFXValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsVFX.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w600,
                          fontSize: AppDimens.fontSizeMedium.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedVFX(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildStories() {
    return Obx(
          () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX, borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownStoriesValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsStories.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w600,
                          fontSize: AppDimens.fontSizeMedium.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedStories(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildModeration(){
    return  Obx((){
      return Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,),
        child: Row(
          children: [
            Text('Moderation',style: TextStyle(
                fontSize: AppDimens.fontSizeMediumX,
                color: AppColors.current.text
            ),
            ),
            Radio(value: 1,
                hoverColor: AppColors.current.neutral,
                focusColor: AppColors.current.neutral,
                activeColor: AppColors.current.neutral,
                groupValue:controller.id.value,
                onChanged: (value){
                  controller.radioButtonItem.value = 'yes';
                  controller.id.value=1;
                }),
            Text('Yes',
              style: TextStyle(
                  fontSize: AppDimens.fontSizeMediumX,
                  color: AppColors.current.text
              ),
            ),
            Empty(width: 16,),
            Radio(value: 2,

                hoverColor: AppColors.current.neutral,
                focusColor: AppColors.current.neutral,
                activeColor: AppColors.current.neutral,
                groupValue:controller.id.value,
                onChanged: (value){
                  controller.radioButtonItem.value = 'No';
                  controller.id.value=2;

                }),
            Text('No',
              style: TextStyle(
                  fontSize: AppDimens.fontSizeMediumX,
                  color: AppColors.current.text
              ),
            ),
          ],
        ),
      );
    });
  }
  Widget _buildPhotography() {
    return Obx(
          () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX, borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownPhotographyValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsPhotography.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w600,
                          fontSize: AppDimens.fontSizeMedium.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedPhotography(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildVideography() {
    return Obx(
          () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX, borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownVideographyValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsVideography.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w600,
                          fontSize: AppDimens.fontSizeMedium.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedVideography(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildMediaBuying(){
    return  Obx((){
      return Padding(
          padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,),
        child: Row(
          children: [
            Text('MediaBuying',style: TextStyle(
              fontSize: AppDimens.fontSizeMediumX,
              color: AppColors.current.text
            ),
            ),
            Radio(value: 1,
                hoverColor: AppColors.current.neutral,
                focusColor: AppColors.current.neutral,
                activeColor: AppColors.current.neutral,
                groupValue:controller.id.value,
                onChanged: (value){
              controller.radioButtonItem.value = 'yes';
              controller.id.value=1;
                }),
            Text('Yes',
              style: TextStyle(
                  fontSize: AppDimens.fontSizeMediumX,
                  color: AppColors.current.text
              ),
            ),
            Empty(width: 16,),
            Radio(value: 2,

                hoverColor: AppColors.current.neutral,
                focusColor: AppColors.current.neutral,
                activeColor: AppColors.current.neutral,
                groupValue:controller.id.value,
                onChanged: (value){
                  controller.radioButtonItem.value = 'No';
                  controller.id.value=2;

                }),
            Text('No',
              style: TextStyle(
                  fontSize: AppDimens.fontSizeMediumX,
                  color: AppColors.current.text
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _buildTextFormBrief() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
        horizontal: 25.h,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: AppColors.current.dimmedLightX,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: 'Brief',
          hintStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: AppDimens.fontSizeMediumX,
            color: AppColors.current.dimmedX,
          ),
        ),
        maxLines: 10,
      ),
    );
  }
  Widget _buildAssignedToAssistantManager() {
    return Obx(
          () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX, borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownAssignedToAssistantManagerValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsAssignedToAssistantManager.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w600,
                          fontSize: AppDimens.fontSizeMedium.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedAssignedToAssistantManager(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildAssignedToPhotography() {
    return Obx(
          () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX, borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownAssignedToPhotographyValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsAssignedToPhotography.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w600,
                          fontSize: AppDimens.fontSizeMedium.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedAssignedToPhotography(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildAssignedToMotionGraphicsVFX() {
    return Obx(
          () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX, borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownPhAssignedToMotionGraphicsVFXValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsAssignedToMotionGraphicsVFX.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w600,
                          fontSize: AppDimens.fontSizeMedium.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedAssignedToMotionGraphicsVFX(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildAssignedToCreativeCopyright() {
    return Obx(
          () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX, borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownAssignedToCreativeCopyrightValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsAssignedToCreativeCopyright.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w600,
                          fontSize: AppDimens.fontSizeMedium.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedAssignedToCreativeCopyright(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildAssignedToPhotoEditing () {
    return Obx(
          () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX, borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownAssignedToPhotoEditingValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsAssignedToPhotoEditing.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w600,
                          fontSize: AppDimens.fontSizeMedium.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedAssignedToPhotoEditing(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildAssignedToVideoEditting () {
    return Obx(
          () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX, borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownAssignedToVideoEdittingValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsAssignedToVideoEditting.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w600,
                          fontSize: AppDimens.fontSizeMedium.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedAssignedToVideoEditting(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildAssignedToAssignedArtDepartment () {
    return Obx(
          () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX, borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownAssignedToArtDepartmentValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsAssignedToArtDepartment.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w600,
                          fontSize: AppDimens.fontSizeMedium.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedAssignedToArtDepartment(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildAssignedToMediaBuying() {
    return Obx(
          () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX, borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownAssignedToMediaBuyingValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsAssignedToMediaBuying.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w600,
                          fontSize: AppDimens.fontSizeMedium.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedAssignedToMediaBuying(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildAssignedToDevelopmentTeam() {
    return Obx(
          () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX, borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownAssignedToDevelopmentTeam.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsAssignedToDevelopmentTeam.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w600,
                          fontSize: AppDimens.fontSizeMedium.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedAssignedToDevelopmentTeam(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildAssignedToMarketing() {
    return Obx(
          () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX, borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownAssignedToMarketing.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsAssignedToMarketing.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w600,
                          fontSize: AppDimens.fontSizeMedium.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedAssignedToMarketing(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildAssignedToModerator() {
    return Obx(
          () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 25.h,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.dimmedLightX, borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownAssignedToModeratorValue.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.current.primary,
                  size: 30.h,
                ),
                // list of status items
                items: controller.itemsAssignedToModerator.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                          color: AppColors.current.dimmedXXXX,
                          fontWeight: FontWeight.w600,
                          fontSize: AppDimens.fontSizeMedium.sp),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelectedAssignedToModerator(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }




  Widget _buildSubmitButton() {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppDimens.paddingSize24,
        bottom: AppDimens.paddingSize12,
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimens.borderRadiusOuter),
        ),
        width: 324.w,
        height: 60.h,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: AppColors.current.primaryX,
          ),
          child: Text(
            'Submit',
            style: TextStyle(
                fontSize: AppDimens.fontSizeMediumX, color: AppColors.current.neutral, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  Widget _buildLine() {
    return Padding(
      padding: EdgeInsets.only(top:100,right: 120.w, left: 120.w, bottom: 10.h),
      child: Container(
        height: 5.h,
        width: 135.w,
        decoration: BoxDecoration(
          color: AppColors.current.text,
          borderRadius: BorderRadius.circular(AppDimens.borderRadiusLine),
        ),
      ),
    );
  }
}
