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
import 'package:hype/app/routes/app_pages.dart';
import 'package:hype/utils/ui/empty.dart';

class TaskView extends StatelessWidget {

    TaskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.current.neutral,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          /// toolbar.
          AppToolbar(
            backCallBack: ()=>Get.back(),
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
               _buildTask(),
               _buildDeleteButton(),
               _buildArchiveButton(),
             ],
           ),
         ),
       ),
     );
   }

   Widget _buildTask(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(AppDims.paddingSize16),
        width: 340,
        height: 500,
        decoration: BoxDecoration(
          color: AppColors.current.neutral,
          borderRadius: BorderRadius.circular(AppDims.borderRadiusOuter),
        ),
        child: Stack(
          children: [
            _buildContentTask(),
            _buildEditTask(),
          ],
        ),
      ),
    );
   }

   Widget _buildContentTask(){
    return Column(
      children: [
        _buildTaskName(),
        _buildTaskStatus(),
        _buildDivider(),
        _buildTaskDesc(),
        _buildDivider(),
        _buildTaskAssignedPersons(),
        _buildDivider(),
        _buildTimer(),
        _buildDivider(),
        _buildTaskDates(),


      ],
    );
   }
   Widget _buildTaskName(){
    return    Padding(
      padding: const EdgeInsets.only(top:AppDims.paddingSize16),
      child: Text('Hype',
        style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: AppDims.fontSizeLargeXX,
            color: AppColors.current.dimmedXXXXX
        ),
      ),
    );
   }
   Widget _buildTaskStatus(){
    return    Padding(
      padding: const EdgeInsets.symmetric(vertical:AppDims.paddingSize16),
      child: Text('On hold',
        style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: AppDims.fontSizeMediumX,
            color: AppColors.current.orangeX
        ),
      ),
    );
   }

   Widget _buildTaskDesc(){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical:AppDims.paddingSize16),
      child: Text('Hiring Post Account director',
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: AppDims.fontSizeMediumX,
            color: AppColors.current.dimmedXXXXX
        ),
      ),
    );
   }

   Widget _buildTaskAssignedPersons(){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical:AppDims.paddingSize16),
      child: Text('Amera Ayman / Assigned by Amera Ayman',
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: AppDims.fontSizeSmallXX,
            color: AppColors.current.primary
        ),
      ),
    );
   }
   Widget _buildDivider(){
    return Divider(
      height: 1.0,
        color: AppColors.current.dimmedXXXXX,
    );
   }
   Widget _buildTimer() {
     return Padding(
       padding: const EdgeInsets.symmetric(vertical: AppDims.paddingSize16),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text('00:00:06:45',
               style: TextStyle(
                   fontWeight: FontWeight.w700, color: AppColors.current.dimmedXXX, fontSize: AppDims.fontSizeLarge)),

           Empty(height: 16.w,),

           Container(
               width: 77,
               height: 77,
               decoration: BoxDecoration(
                 color: AppColors.current.dimmed.withOpacity(0.1),
                 shape: BoxShape.circle,
               ),
               child: SvgPicture.asset(AppAssets.pauseIcon, width: 16.w, height: 16.h,
               fit: BoxFit.scaleDown,)),
         ],
       ),
     );
   }

   Widget _buildTaskDates() {
     return Padding(
       padding: const EdgeInsets.symmetric(horizontal: AppDims.paddingSize15, vertical: AppDims.paddingSize8),
       child: Row(
         children: [
           _buildRequestAndDeadlineDate(
               text: 'Date Of request',
               colorText: AppColors.current.green,
               date: 'April 20, 2022',
               hour: '12:00:00 AM'),

           _buildRequestAndDeadlineDate(
               text: 'Deadline',
               colorText: AppColors.current.primary,
               date: 'April 20, 2022',
               hour: '12:00:00 AM'),
         ],
       ),
     );
   }

   Widget _buildRequestAndDeadlineDate({
     required String text, required String date, required String hour, required Color colorText}) {
     return Expanded(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(
             text, style: TextStyle(fontSize: AppDims.fontSizeMedium, fontWeight: FontWeight.w900, color: colorText,),),
           Empty(height: AppDims.paddingSize5),
           Text(date),
           Empty(height: AppDims.paddingSize5),
           Text(hour),
         ],
       ),
     );
   }
    Widget _buildEditTask(){
      return AlignPositioned(
        child: Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            color: AppColors.current.neutral,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppColors.current.dimmedX,
                offset: const Offset(0.0, 2.0), //(x,y)
                blurRadius: 5.0,
              ),
            ],
          ),
          child: InkWell(
            onTap: ()=>Get.toNamed(Routes.EDIT_TASK),
            child: SvgPicture.asset(
              AppAssets.completeRedIcon,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        alignment: Alignment.topRight,
        touch: Touch.inside,
        dx: 16.0, // Move 4 pixels to the right.
        moveByChildWidth: -0.4, // Move half child width to the left.
        moveByChildHeight: 0,
      );
    }

    Widget _buildDeleteButton() {
      return Padding(
        padding: const EdgeInsets.only(
          top: AppDims.paddingSize16,
          bottom: AppDims.paddingSize12,
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  AppDims.borderRadiusOuter
              ),

          ),
          width: 324.w,
          height: 60.h,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: AppColors.current.primaryXX,
            ),
            onPressed: () {},
            child: Text(
              'Delete',
              style: TextStyle(
                  fontSize: AppDims.fontSizeMediumX,
                  color: AppColors.current.neutral,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      );
    }
    Widget _buildArchiveButton() {
      return Padding(
        padding: const EdgeInsets.only(
          top: AppDims.paddingSize8,
          bottom: 100,
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  AppDims.borderRadiusOuter
              ),

          ),
          width: 324.w,
          height: 60.h,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: AppColors.current.neutral,
            ),
            onPressed: () {},
            child: Text(
              'Archive',
              style: TextStyle(
                  fontSize: AppDims.fontSizeMediumX,
                  color: AppColors.current.primary,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      );
    }
}
