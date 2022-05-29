import 'package:get/get.dart';


class ClientController extends GetxController{


  RxList clients = [
    Client(name: 'Hype',
        id: 58,
        vfx: 10,
        stories: 30,
        Mideration: 'yes',
        Photography: 'Monthly',
        Videography: 'No',
        MediaBuying: 'Yes'),
    Client(name: 'Al Arabia',
        id: 70,
        vfx: 10,
        stories: 30,
        Mideration: 'yes',
        Photography: 'Monthly',
        Videography: 'No',
        MediaBuying: 'Yes'),
    Client(name: 'Renaissance',
        id: 90,
        vfx: 10,
        stories: 30,
        Mideration: 'yes',
        Photography: 'Monthly',
        Videography: 'No',
        MediaBuying: 'Yes'),
  ].obs;

}
class Client{
  String name;
  int id;
  int vfx;
  int stories;
  String Mideration;
  String Photography;
  String Videography;
  String MediaBuying;

  Client({
    required this.name, required this.id, required this.vfx,
    required this.stories, required this.Mideration, required this.Photography,
    required this.Videography,
    required this.MediaBuying
});
}