import 'package:daily_plan_app/screens/home/forget_password/forget_password_screen.dart';
import 'package:daily_plan_app/screens/home/home_screen.dart';
import 'package:daily_plan_app/screens/home/sign_up/sign_up_screen.dart';
import 'package:daily_plan_app/screens/onboard/onboard_screen.dart';
import 'package:get/get.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => OnBoard()),
    GetPage(name: Routes.LOGIN, page: () => Home()),
    GetPage(name: Routes.FORGET_PASSWORD, page: () => ForgetPasswordScreen()),
    GetPage(name: Routes.SIGNUP, page: () => SignUpScreen()),
  ];
}
