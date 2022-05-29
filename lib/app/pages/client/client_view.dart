import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/client/_widgets/client_items.dart';
import 'package:hype/app/pages/client/client_controller.dart';
import 'package:hype/app/pages/side_menu/side_menu_view.dart';
import 'package:hype/app/routes/app_pages.dart';
import 'package:hype/utils/ui/empty.dart';


class ClientView extends StatelessWidget {
  final ClientController controller = Get.find();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  ClientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.current.neutral,
      drawer: SideMenuView(),
      body: _buildBody(),
    );
  }
  Widget _buildBody() {
    return SafeArea(
      child: Column(
        children: [
          AppToolbar(
            drawerCallBack: () => scaffoldKey.currentState?.openDrawer(),
            title: 'Client',
        //    actions: IconButton(onPressed: () {}, icon: SvgPicture.asset(AppAssets.searchIcon)),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildSearch(),
              _buildCreateNewClient(),
              _buildClientItem(),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildSearch() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDims.paddingSize24,
        vertical: AppDims.paddingSize16,
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
  Widget _buildCreateNewClient(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: ()=>Get.toNamed(Routes.ADD_ACCOUNT_ALLOCATION),
        child: Container(
          width: 260.w,
          height: 48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDims.borderRadiusOuter),
            border: Border.all(
              width: 1,
              color: AppColors.current.neutral,
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('create a new ',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.current.text,
              ),
              ),
              Empty(
                width: 8,
              ),
              SvgPicture.asset(AppAssets.createClientIcon),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildClientItem(){
    return  ListView.builder(
        physics:const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount:controller.clients.length,
        itemBuilder: (context, index) {
          return ClientItems(client: controller.clients[index]);
        });
  }
}
