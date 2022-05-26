import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text(
          'NotificationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}