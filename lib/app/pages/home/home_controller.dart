import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/action_center/action_center.dart';
import 'package:hype/app/common/managers/api/home/i_home_api_manager.dart';
import 'package:hype/app/common/managers/cache/i_cache_manager.dart';
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
  List<HomeModel> list=[
    HomeModel(
      name: 'Hype',
      nameJob: 'Hiring Post Account director',
      nameEmployee:'Amera Ayman / Assigned by Amera Ayman' ,
      status: 'completed',
        color: const Color(0xff7CFA4D)
    ),
    HomeModel(
        name: 'Hugo Boss',
        nameJob: 'Hiring Post Account director',
        nameEmployee:'Amera Ayman / Assigned by Amera Ayman' ,
        status: 'Assigned',
        color: const Color(0xffEF9D39)
    ),
    HomeModel(
        name: 'Monkey Maze',
        nameJob: 'Hiring Post Account director',
        nameEmployee:'Amera Ayman / Assigned by Amera Ayman' ,
        status: 'Client Review',
        color: const Color(0xff4A70BA)
    ),
    HomeModel(
        name: 'Tryset',
        nameJob: 'Hiring Post Account director',
        nameEmployee:'Amera Ayman / Assigned by Amera Ayman' ,
        status: 'In The Works',
        color: const Color(0xffDEBAB1)
    ),
    HomeModel(
        name: 'Tryset',
        nameJob: 'Hiring Post Account director',
        nameEmployee:'Amera Ayman / Assigned by Amera Ayman' ,
        status: 'On hold',
        color: const Color(0xff7CFA4D)
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

class HomeModel{
  String name;
  String nameEmployee;
  String status;
  String nameJob;
  Color color;

  HomeModel(
  {
    required this.name,
   required  this.status,
   required this.nameJob,
    required this.nameEmployee,
    required this.color
  }
      );
}