import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/department/_widgets/department_items.dart';
import 'package:hype/app/pages/department/department_controller.dart';
import 'package:hype/app/pages/drawer/drawer_view.dart';
import 'package:hype/app/routes/app_pages.dart';

class DepartmentView extends StatelessWidget {
  DepartmentView({Key? key}) : super(key: key);
  DepartmentController controller = Get.find();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.current.neutral,
      drawer: DrawerView(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Column(
        children: [
          AppToolbar(
            drawerCallBack: () => scaffoldKey.currentState?.openDrawer(),
            title: 'Departments',
            actions: Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.current.primary,
                  width: 2
                ),
                borderRadius: BorderRadius.circular(
                   AppDimens.borderRadius
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: InkWell(
                  onTap: (){
                    Get.toNamed(Routes.ADD_ADMIN_DEPARTMENT);
                  },
                  child: SvgPicture.asset(AppAssets.plusIcon),
                ),
              ),
            ),
          ),
          _buildBodyView(),
        ],
      ),
    );
  }
  Widget _buildSearch() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal:  AppDimens.paddingSize24,
          vertical:  AppDimens.paddingSize16,
          ),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon:SvgPicture.asset(AppAssets.searchIcon,color: AppColors.current.neutral,
          fit: BoxFit.scaleDown,),
          hintText: 'Search here',
          hintStyle: TextStyle(
            color: AppColors.current.text.withOpacity(0.5),
          ),
          filled: true,
          fillColor: AppColors.current.primary,
          focusColor: AppColors.current.primary,
        ),
      ),
    );
  }

  Widget _buildBodyView() {
    return Expanded(
      child: Container(
        color: AppColors.current.primary,
        child: Column(
          children: [
            _buildSearch(),
            Expanded(
              child: ListView.builder(
                  itemCount:controller.departments.length,
                  itemBuilder: (context, index) {
                    return DepartmentItems(department:controller.departments[index],);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}


