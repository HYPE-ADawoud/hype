
import 'package:flutter/material.dart';
import 'package:hype/app/common/managers/api/auth/_model/user_data.dart';

abstract class ICacheManager{

  Future<void> init();

  Future<void> setUserData(UserData data);

  UserData? getUserData();

  Locale? getAppLocale();

  bool? logout();

}