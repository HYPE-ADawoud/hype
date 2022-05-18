import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/pages/home/home_controller.dart';
import 'package:hype/utils/ui/empty.dart';

class TaskItem extends StatelessWidget {
  final TaskModel taskModel;

  const TaskItem({Key? key, required this.taskModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
      child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.text, borderRadius: BorderRadius.circular(AppDims.borderRadiusOuter)),
          child: Column(
            children: [
              _buildTaskHeader(),
              _buildCollapsedTaskData(),
            ],
          )),
    );
  }

  Widget _buildTaskHeader() {
    return InkWell(
      onTap: () {
        taskModel.isExpanded.value = !taskModel.isExpanded.value;
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0.h),
        child: Column(
          children: [
            _buildTaskNameAndStatus(),
            Empty(height: AppDims.paddingSize5,),
            _buildTaskDesc(),
          ],
        ),
      ),
    );
  }

  Container _buildTaskNameAndStatus() {
    return Container(
        height: 37.h,
        padding: const EdgeInsets.symmetric(horizontal: AppDims.paddingSize16),
        color: taskModel.color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [_buildTaskName(), _buildTaskStatus()],));
  }

  Widget _buildCollapsedTaskData() {
    return Obx(() {
      return Visibility(
          visible: taskModel.isExpanded.value,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildDivider(),
              _buildTaskAssignedPersons(),
              _buildDivider(),
              _buildTimer(),
              _buildDivider(),
              _buildTaskDates(),
            ],
          ));
    });
  }

  Widget _buildTaskName() {
    return Row(
      children: [
        Text(taskModel.name,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: AppColors.current.text)),
        Empty(width: 4.w),
        SvgPicture.asset(AppAssets.editIcon, color: AppColors.current.text, width: 14.w, height: 14.h)
      ],
    );
  }

  Widget _buildTaskStatus() {
    return Row(
      children: [
        Text(taskModel.status,
          style: TextStyle(fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: AppColors.current.text),),
        Empty(width: 4.w),
        Obx(() {
          return Icon(taskModel.isExpanded.value? CupertinoIcons.chevron_up_circle_fill:CupertinoIcons.chevron_down_circle_fill, color: AppColors.current.neutral, size: 17.w,);
        })
      ],
    );
  }

  Widget _buildTaskDesc() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDims.paddingSize5),
      child: Text(
          taskModel.taskDesc, style: TextStyle(fontSize: AppDims.fontSizeMedium, color: AppColors.current.dimmedX)),
    );
  }

  Widget _buildDivider() {
    return Divider(
        height: 0.5.h,
        color: AppColors.current.dimmedXX,
        endIndent: 16.w,
        indent: 16.w
    );
  }

  Widget _buildTaskAssignedPersons() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDims.paddingSize8),
      child: FittedBox(
        child: Text(
          '${taskModel.assignedFor} / Assigned by ${taskModel.assignedBy}',
          textAlign: TextAlign.center,
          maxLines: 1,
          style: TextStyle(
              color: AppColors.current.dimmedXX, fontSize: AppDims.fontSizeMediumX, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }

  Widget _buildTimer() {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppDims.paddingSize8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('00:00:06:45',
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: AppColors.current.dimmedXXX, fontSize: AppDims.fontSizeLarge)),

            Empty(width: 8.w,),

            SvgPicture.asset(AppAssets.playIcon, width: 18.w, height: 18.h,),
          ],
        ),
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
              colorText: taskModel.color,
              date: taskModel.requestDay,
              hour: taskModel.requestTime),

          _buildRequestAndDeadlineDate(
              text: 'Deadline',
              colorText: AppColors.current.primary,
              date: taskModel.deadlineDay,
              hour: taskModel.deadlineTime),
        ],
      ),
    );
  }

  Widget _buildRequestAndDeadlineDate(
      {required String text, required String date, required String hour, required Color colorText}) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text, style: TextStyle(fontSize: AppDims.fontSizeMediumX, fontWeight: FontWeight.w900, color: colorText,),),
          Empty(height: AppDims.paddingSize5),
          Text(date),
          Empty(height: AppDims.paddingSize5),
          Text(hour),
        ],
      ),
    );
  }
}
