import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/action_center/action_center.dart';
import 'package:hype/app/common/managers/api/home/i_home_api_manager.dart';
import 'package:hype/app/common/managers/cache/i_cache_manager.dart';
import 'package:hype/app/common/themes/app_colors.dart';
import 'package:hype/setup.dart';

class HomeController extends GetxController {
  final _cacheManager = DI.find<ICacheManager>();
  final _apiManager = DI.find<IHomeApiManager>();

  late Stopwatch stopwatch;

  String formatTime(int milliseconds) {
    var secs = milliseconds ~/ 1000;
    var hours = (secs ~/ 3600).toString().padLeft(2, '0');
    var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
    var seconds = (secs % 60).toString().padLeft(2, '0');
    return "$hours:$minutes:$seconds";

  }

  var isVisible = true.obs;
  void showVisible() {
    isVisible.value = !isVisible.value;

  }
  List<TaskModel> list=[
    TaskModel(
      name: 'Hype',
      taskDesc: 'Hiring Post Account director',
      nameEmployee:'Amera Ayman / Assigned by Amera Ayman' ,
      status: 'completed', color: AppColors.current.green,
        requestDay: 'April 20, 2022',
        requestTime: '12:00 AM',
        deadlineDay: 'April 22, 2022',
        deadlineTime: '12:00 PM',
        assignedFor: 'Amera Ayman',
        assignedBy: 'Ahmed Dawoud',
      isSelected: false.obs
    ),
    TaskModel(
        name: 'Hugo Boss',
        taskDesc: 'Hiring Post Account director',
        nameEmployee:'Amera Ayman / Assigned by Amera Ayman' ,
        status: 'Assigned',
        color: AppColors.current.orange,
        requestDay: 'April 20, 2022',
        requestTime: '12:00 AM',
        deadlineDay: 'April 22, 2022',
        deadlineTime: '12:00 PM',
        assignedFor: 'Amera Ayman',
        assignedBy: 'Ahmed Dawoud',
        isSelected: false.obs
    ),
    TaskModel(
        name: 'Monkey Maze',
        taskDesc: 'Hiring Post Account director',
        nameEmployee:'Amera Ayman / Assigned by Amera Ayman' ,
        status: 'Client Review',
        color: AppColors.current.blue ,
        requestDay: 'April 20, 2022',
        requestTime: '12:00 AM',
        deadlineDay: 'April 22, 2022',
        deadlineTime: '12:00 PM',
        assignedFor: 'Amera Ayman',
        assignedBy: 'Ahmed Dawoud',
        isSelected: false.obs
    ),
    TaskModel(
        name: 'Tryset',
        taskDesc: 'Hiring Post Account director',
        nameEmployee:'Amera Ayman / Assigned by Amera Ayman' ,
        status: 'In The Works',
        color: AppColors.current.peach,
        requestDay: 'April 20, 2022',
        requestTime: '12:00 AM',
        deadlineDay: 'April 22, 2022',
        deadlineTime: '12:00 PM',
        assignedFor: 'Amera Ayman',
        assignedBy: 'Ahmed Dawoud',
        isSelected: false.obs
    ),
    TaskModel(
        name: 'Tryset',
        taskDesc: 'Hiring Post Account director',
        nameEmployee:'Amera Ayman / Assigned by Amera Ayman' ,
        status: 'On hold',
        color: AppColors.current.green,
        requestDay: 'April 20, 2022',
        requestTime: '12:00 AM',
        deadlineDay: 'April 22, 2022',
        deadlineTime: '12:00 PM',
        assignedFor: 'Amera Ayman',
        assignedBy: 'Ahmed Dawoud',
        isSelected: false.obs
    ),
  ].obs;
  final _action = ActionCenter();
  final dropDownValue = 'Status 1'.obs;

  void setSelected(value){
    dropDownValue.value = value;
  }
  var items = [
    'Status 1',
    'Status 2',
    'Status 3',
    'Status 4',
  ].obs;

  @override
  void onInit() {
    super.onInit();
    _onLoad();
    stopwatch = Stopwatch();
  }
  void handleStartStop() {
    if (stopwatch.isRunning) {
      stopwatch.stop();
    } else {
      stopwatch.start();
    }

  }
  void _onLoad() async {

  }

}

class TaskModel {
  String name;
  String nameEmployee;
  String status;
  String taskDesc;
  Color color;
  String assignedFor;
  String assignedBy;

  String requestDay;
  String requestTime;
  String deadlineDay;
  String deadlineTime;
  RxBool? isSelected;

  TaskModel({required this.name,
    required this.status,
    required this.taskDesc,
    required this.nameEmployee,
    required this.color,
    required this.requestDay,
    required this.requestTime,
    required this.deadlineDay,
    required this.deadlineTime,
    required this.assignedFor,
    required this.assignedBy,
    this.isSelected
  });
}