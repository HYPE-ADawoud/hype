import 'package:get/get.dart';
import 'package:hype/app/common/action_center/action_center.dart';
import 'package:hype/app/common/managers/api/home/i_home_api_manager.dart';
import 'package:hype/app/common/managers/cache/i_cache_manager.dart';
import 'package:hype/setup.dart';

class HomeController extends GetxController {
  final _cacheManager = DI.find<ICacheManager>();
  final _apiManager = DI.find<IHomeApiManager>();
  final _action = ActionCenter();


  @override
  void onInit() {
    super.onInit();
    _onLoad();
  }

  void _onLoad() async {

  }

}
