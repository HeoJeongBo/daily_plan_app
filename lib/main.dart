import 'package:daily_plan_app/core/theme/app_theme.dart';
import 'package:daily_plan_app/pages/home/home_page.dart';
import 'package:daily_plan_app/routes/app_pages.dart';
import 'package:daily_plan_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.INITIAL,
        defaultTransition: Transition.fade,
        getPages: AppPages.pages,
        home: SplashScreen(),
        locale: Locale('ko', 'KR'),
        theme: appThemeData,
      ),
    ),
  );
}
