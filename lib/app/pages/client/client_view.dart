import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/pages/client/_widgets/client_items.dart';
import 'package:hype/app/pages/client/client_controller.dart';
import 'package:hype/app/pages/drawer/drawer_view.dart';



class ClientView extends StatelessWidget {
  final ClientController controller = Get.find();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  ClientView({Key? key}) : super(key: key);

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
            title: 'Client',
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
            itemCount:controller.clients.length,
            itemBuilder: (context, index) {
              return ClientItems(client: controller.clients[index]);
            }),
      ),
    );
  }
}
