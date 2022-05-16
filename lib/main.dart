import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hype/app/common/themes/app_theme.dart';
import 'package:hype/app/pages/splash/splash_binding.dart';
import 'package:hype/setup.dart';

import 'app/routes/app_pages.dart';

void main() async{
  /// setup locator.
  setup();
  /// run app
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:(_)=> GetMaterialApp(
        // Use this line to prevent extra rebuilds
        useInheritedMediaQuery: true,
        title: "HYPE",
        initialBinding: SplashBinding(),
        getPages: AppPages.routes,
        initialRoute: AppPages.INITIAL,
        enableLog: BUILD_TYPE == BuildType.debug,
        locale: const Locale('en'),
        fallbackLocale: const Locale('en'),
        theme: AppTheme.defaultTheme,
        debugShowCheckedModeBanner: BUILD_TYPE == BuildType.debug,
      ),
    ),
  );
}

enum BuildType {debug, test, release}
const BuildType BUILD_TYPE = BuildType.debug;
