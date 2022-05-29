import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/department/_widgets/department_items.dart';
import 'package:hype/app/pages/department/department_controller.dart';
import 'package:hype/app/pages/drawer/drawer_view.dart';


class DepartmentView extends StatelessWidget {
  DepartmentView({Key? key}) : super(key: key);
  DepartmentController controller = Get.find();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.current.neutral,
      drawer: const DrawerView(),
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
        child: ListView.builder(
            itemCount:controller.departments.length,
            itemBuilder: (context, index) {
              return DepartmentItems(department:controller.departments[index],);
            }),
      ),
    );
  }
}


