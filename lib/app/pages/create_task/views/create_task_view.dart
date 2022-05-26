import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/create_task_controller.dart';

class CreateTaskView extends GetView<CreateTaskController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CreateTaskView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CreateTaskView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
