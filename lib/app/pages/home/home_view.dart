import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/home/home_controller.dart';
import 'package:hype/app/pages/side_menu/side_menu_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hype/utils/ui/empty.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer:  SideMenuView(),
      backgroundColor: AppColors.current.primary,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          /// toolbar.
           _buildToolbar(),
          _buildBodyView(),
        ],
      ),
    );
  }

  AppToolbar _buildToolbar() {
    return AppToolbar(
      title: 'Home View',
      drawerCallBack: () => scaffoldKey.currentState?.openDrawer(),
    );
  }

  Widget _buildBodyView() {
    return Expanded(
      child: Column(
        children: [
          _buildItemStatus(),
          _buildListOfItemTask(),
        ],
      ),
    );
  }

  /////
  Widget _buildItemStatus() {
    return Obx(
      () => Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18.w,vertical: 16.h),
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.current.text,
              border: Border.all(
                width: 1.0,
                color: AppColors.current.primary,
              ),
              borderRadius: BorderRadius.circular(AppDims.borderRadiusOuter)),
          width: 339.w,
          height:36.h,
          child: Center(
            child: DropdownButtonHideUnderline(
              child: _buildDropDownButtonStatus(),
            ),
          ),
        ),
      ),
    );
  }

  /////
  Widget _buildDropDownButtonStatus(){
    return  DropdownButton(
      isExpanded: true,
      // Initial status Value
      value: controller.dropDownValue.value,
      icon: Icon(
        Icons.keyboard_arrow_down,
        color: AppColors.current.primary,
        size: 30.h,
      ),
      // list of status items
      items: controller.items.map((String items) {
        return DropdownMenuItem(
          alignment: Alignment.center,
          value: items,
          child: Text(
            items,
            style: TextStyle(color: AppColors.current.primary,
                fontSize: 16.sp
            ),
          ),
        );
      }).toList(),
      onChanged: (newValue) {
        controller.setSelected(newValue);
      },
    );
  }

  ////
  Widget _buildListOfItemTask(){
    return Expanded(
      child: ListView.builder(
          itemCount: controller.list.length,
          itemBuilder: (context,index){
            return  Padding(
              padding:  EdgeInsets.symmetric(horizontal: 18.w,vertical: 8.h),
              child: Container(
                width: 339.w,
                height: 225.h,
                decoration: BoxDecoration(
                  color: AppColors.current.text,
                  borderRadius: BorderRadius.circular(AppDims.borderRadiusOuter)
              ),
                child: Column(
                  children: [
                   _buildVisibleData(index: index),
                    _buildInvisibleData(index),
                  ],
                )
              ),
            );
          }),
    );
  }

  Widget _buildVisibleData({
    required int index
  })
  {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Column(
        children: [
          _buildEditAndStatusData(index: index),
          _buildNameJob(jobName: controller.list[index].nameJob),
        ],
      ),
    );
  }

  Widget _buildEditAndStatusData({required int index}){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 24),
      height: 37.h,
      color: controller.list[index].color,
      child: Row(
        children: [
          _buildEditAndStatusRowData(
              name: controller.list[index].name,
              icon: AppAssets.editIcon
          ),
          const Spacer(flex: 1,),
          _buildEditAndStatusRowData(
              name: controller.list[index].status,
              icon: AppAssets.completeIcon
          ),
        ],
      ),
    );
  }

  Widget _buildEditAndStatusRowData({required String name,required String icon}){
    return Row(
      children: [
        Text(name,style: TextStyle(fontSize: 14.sp,color: AppColors.current.text),),
        Empty(width: 4.w,),
      InkWell(
              onTap: (){
                controller.showVisible();
              },
              child: SvgPicture.asset(icon,color: AppColors.current.text,)
          ),

      ],
    );
}

  Widget _buildInvisibleData(int index){
    return Visibility(
      //visible: controller.isVisible.value,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildDivider(),
            _buildNameEmployee(index:index),
            _buildDivider(),
            _buildTimer(),
            _buildDivider(),
            _buildTaskDate(),
          ],
        ));
  }

Widget _buildNameJob({required String jobName}){
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: SizedBox(
          height: 17.h,
          width: 199.w,
          child: Text(
            jobName,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.current.dimmedXX,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          )),
    );
}
Widget _buildDivider(){
    return Divider(
      height: 0.5.h,
      color: AppColors.current.dimmedXX,
      endIndent: 16.w,
      indent : 16.w,
    );
}
Widget _buildNameEmployee({required int index}){
    return Padding(
      padding: const EdgeInsets.only(top:6.0,bottom: 4),
      child: SizedBox(
          height: 17.h,
          width: 199.w,
          child: Text(
            controller.list[index].nameEmployee,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.current.dimmedXX,
                fontSize: 14.sp,
              fontWeight: FontWeight.w600
            ),
          )),
    );
  }
  Widget _buildTimer(){
    return  Padding(
      padding:  EdgeInsets.symmetric(vertical:4.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(controller.formatTime(controller.stopwatch.elapsedMilliseconds),
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: AppColors.current.dimmedXXX,
                fontSize:14.0.sp)),
        Empty(width: 8.w,),
        GestureDetector(onTap: ()=>controller.handleStartStop(),
            child: SvgPicture.asset(AppAssets.playIcon)),
      ],),
    );
  }
  Widget _buildTaskDate(){
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:20.0.w,vertical: 4.0.h),
      child: Row(
        children: [
          _buildRequestAndDeadlineDate(
              text: 'Date Of request',
              colorText: Colors.lightGreenAccent,
              date: 'April 20, 2022',
              hour: '12:00:00 AM'),
          Empty(width: 36.w,),
          _buildRequestAndDeadlineDate(
              text: 'Deadline',
              colorText: Colors.red,
              date: 'April 20, 2022',
              hour: '12:00:00 AM'),
        ],
      ),
    );
  }
  Widget _buildRequestAndDeadlineDate({required String text,
  required String date,
  required String hour,
  required Color colorText
  }){
    return Column(
      children: [
        Text(text,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w900,
          color: colorText,
        ),),
        Empty(height: 2.h,),
        Text(date),
        Empty(height: 2.h,),
        Text(hour)
      ],
    );
  }
}
