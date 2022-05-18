import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/home/_widgets/task_item.dart';
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
      drawer: SideMenuView(),
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
            drawerCallBack: () => scaffoldKey.currentState?.openDrawer(),
            actions: IconButton(onPressed: () {}, icon: SvgPicture.asset(AppAssets.searchIcon)),
          ),
          _buildBodyView(),
        ],
      ),
    );
  }

  Widget _buildBodyView() {
    return Expanded(
      child: Container(
        color: AppColors.current.primary,
        child: Column(
          children: [
            _buildTaskStatus(),
            _buildListOfTasks(),
          ],
        ),
      ),
    );
  }

  /////
  Widget _buildTaskStatus() {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 13.h),
        child: Container(
          width: 339.w,
          height: 40.h,
          decoration: BoxDecoration(
              color: AppColors.current.text,
              borderRadius: BorderRadius.circular(AppDims.borderRadius)),
          child: Center(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                // Initial status Value
                value: controller.dropDownValue.value,
                icon: Icon(Icons.keyboard_arrow_down, color: AppColors.current.primary, size: 30.h,),
                // list of status items
                items: controller.items.map((String items) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: items,
                    child: Text(items, style: TextStyle(color: AppColors.current.primary, fontSize: 16.sp),),
                  );
                }).toList(),
                onChanged: (newValue) => controller.setSelected(newValue),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ////
  Widget _buildListOfTasks() {
    return Expanded(
      child: ListView.builder(
          itemCount: controller.list.length,
          itemBuilder: (context, index) {
            return TaskItem(taskModel: controller.list[index],);
          }),
    );
  }
}
