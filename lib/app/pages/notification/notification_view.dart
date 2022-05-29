import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/pages/notification/_widgets/notification_content_items.dart';
import 'package:hype/app/pages/notification/notification_controller.dart';
import 'package:hype/utils/ui/empty.dart';

class NotificationView extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildTitle(),
            _buildContentNotification(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildLine(),
        _buildText(),
        _buildLine(),
      ],
    );
  }

  Widget _buildLine() {
    return Container(
      color: AppColors.current.neutral,
      child: Divider(
        indent: 82.w,
        height: 0.5,
        color: AppColors.current.text,
        thickness: 82,
      ),
    );
  }

  Widget _buildText() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
      child: Text(
        'Notification',
        style: TextStyle(
          fontSize: AppDims.fontSizeLarge,
          fontWeight: FontWeight.w400,
          color: AppColors.current.text,
        ),
      ),
    );
  }

  Widget _buildContentNotification() {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return NotificationContentItem();
          }),
    );
  }
}
