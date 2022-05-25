import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_assets.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/pages/client/client_controller.dart';
import 'package:hype/app/routes/app_pages.dart';
import 'package:hype/utils/ui/empty.dart';

class ClientItems extends StatelessWidget {
  final Client client;
  ClientItems({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppDims.paddingSize24,
        left: AppDims.paddingSize18,
        right: AppDims.paddingSize18,
        bottom: AppDims.paddingSize10,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppDims.paddingSize15.w, vertical: AppDims.paddingSize20.h),
        width: 339.w,
        decoration: BoxDecoration(
          color: AppColors.current.neutral,
          borderRadius: BorderRadius.circular(8),
        ),
        child: _buildItems(),
      ),
    );
  }

  Widget _buildItems() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildNameAndID(),
        _buildDivider(),
        _buildVfxStoriesMiderationResult(),
        _buildDivider(),
        _buildResult(
          title: 'Photography',
          result: client.Photography,
        ),
        _buildDivider(),
        _buildResult(
          title: 'Videography',
          result: client.Videography,
        ),
        _buildDivider(),
        _buildResult(
          title: 'Media buying',
          result: client.MediaBuying,
        ),
      ],
    );
  }

  Widget _buildNameAndID() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildName(),
        _buildSpace(),
        _buildId(title: 'ID', id: client.id),
        _buildEditButton(),
      ],
    );
  }
  Widget _buildName(){
    return Text(
      client.name,
      style: TextStyle(fontSize: 20.sp, color: AppColors.current.primary, fontWeight: FontWeight.w700),
    );
  }
  Widget _buildSpace(){
    return const Spacer(flex: 1,);
  }
  Widget _buildId({required String title,required int id}){
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18.sp, color: AppColors.current.primary, fontWeight: FontWeight.w800),
        ),
        Empty(width: 6,),
        Text(
          id.toString(),
          style: TextStyle(fontSize: 18.sp, color: AppColors.current.primary, fontWeight: FontWeight.w800),
        ),

      ],
    );
  }
  Widget _buildEditButton(){
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 4
      ),
      child: InkWell(
        onTap: () => Get.toNamed(Routes.ADD_ACCOUNT_ALLOCATION),
        child: SvgPicture.asset(
          AppAssets.editIcon,
          width: 16,
          height: 16,
        ),
      ),
    );
  }
  Widget _buildDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppDims.paddingSize10.h),
      child: Divider(
        color: AppColors.current.dimmedXXXX,
        height: 0.5,
      ),
    );
  }

  Widget _buildVfxStoriesMiderationResult(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildResult(title: 'VFX', result: client.vfx.toString()),
        const Text('-'),
        _buildResult(title: 'Stories', result: client.stories.toString()),
        const Text('-'),
        _buildResult(title: 'Mideration', result: client.Mideration),

      ],
    );
  }
  Widget _buildResult({required String title ,required String result}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
          style: TextStyle(fontSize: 14.sp, color: AppColors.current.dimmedXXXXX, fontWeight: FontWeight.w600),
        ),
        Empty(width: 4,),
        Text(
          result,
          style: TextStyle(fontSize: 16.sp, color: AppColors.current.primary, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }

}
