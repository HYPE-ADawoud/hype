import 'package:get/get.dart';

class DashboardController extends GetxController{

  RxList topClients = [
    TopClient(
        name: 'Hype',
        timeSpent: '408 D 11 H 41 M',
        tasks: 253),
    TopClient(
        name: 'Al Arabia',
        timeSpent: '408 D 11 H 41 M',
        tasks: 253),
    TopClient(
        name: 'Renaissance',
        timeSpent: '408 D 11 H 41 M',
        tasks: 253),
    TopClient(
        name: 'Culture Lab',
        timeSpent: '408 D 11 H 41 M',
        tasks: 253),
  ].obs;

  RxList platformTraffic = [
    PlatformsTraffic(
        typeOfNumber: 'Pitch Number',
        valueNumber: 345,
        percentage:  12.912),
    PlatformsTraffic(
        typeOfNumber: 'Retainer Number',
        valueNumber: 2148,
        percentage:  80.389),
    PlatformsTraffic(
        typeOfNumber: 'One Time Number',
        valueNumber: 192,
        percentage:  7.186),
  ].obs;

  RxList membersTask=[
    MemberTask(name: 'khaled mohamed', number: 346),
    MemberTask(name: 'Amera ayman', number: 324),
    MemberTask(name: 'Rami ebaid', number: 295),
    MemberTask(name: 'Mostafa abrahim', number: 274),
    MemberTask(name: 'Laila ahmed', number: 205),
    MemberTask(name: 'Menna shosha', number: 186),
  ].obs;
}

class TopClient{
  String name;
  String timeSpent;
  int tasks;

  TopClient({required this.name, required this.timeSpent, required this.tasks});
}

class PlatformsTraffic{
  String  typeOfNumber;
  int valueNumber;
  double percentage;

  PlatformsTraffic({required this.typeOfNumber, required this.valueNumber, required this.percentage});
}

class MemberTask{
  String name;
  int number;
  MemberTask({required this.name,required this.number});
}