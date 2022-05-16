
import 'dart:ui';

import 'package:hype/app/common/managers/api/auth/_model/user_data.dart';
import 'package:hype/app/common/managers/cache/i_cache_manager.dart';
import 'package:hype/services/persistence/cache/abs_cache_service.dart';
import 'package:hype/services/persistence/cache/fake_cache_service.dart';


/// used for debugging only
class DebugCacheManager implements ICacheManager{

  late AbsCacheService _cacheService;

  DebugCacheManager(){
    _cacheService = FakeCacheService();
  }

  @override
  Future<void> init() async{
    // do nothing
  }

  @override
  UserData? getUserData() {
    return _cacheService.retrieveObject('user', UserData());
  }

  @override
  Future<void> setUserData(UserData data) {
    return _cacheService.storeObject('user', data);
  }

  @override
  Locale? getAppLocale() {
    return const Locale('ar');
  }

  @override
  bool? logout() {

  }


}