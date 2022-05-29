import 'package:get/get.dart';
import 'package:hype/app/pages/client/client_controller.dart';


class ClientBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ClientController>(() => ClientController());
  }

}