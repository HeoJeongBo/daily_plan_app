import 'package:daily_plan_app/screens/home/home_screen.dart';
import 'package:daily_plan_app/screens/onboard/onboard_screen.dart';
import 'package:get/get.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => OnBoard()),
    GetPage(name: Routes.LOGIN, page: () => Home()),
  ];
}
