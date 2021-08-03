import 'package:daily_plan_app/core/theme/app_theme.dart';
import 'package:daily_plan_app/pages/home/home_page.dart';
import 'package:daily_plan_app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    home: Home(),
    locale: Locale('ko', 'KR'),
    theme: appThemeData,
  ));
}
