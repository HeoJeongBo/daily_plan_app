import 'package:daily_plan_app/pages/home/home_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [GetPage(name: Routes.INITIAL, page: () => Home())];
}
