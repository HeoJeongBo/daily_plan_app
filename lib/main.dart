import 'package:daily_plan_app/core/theme/app_theme.dart';
import 'package:daily_plan_app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    // theme: appThe
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    // home: ,
    locale: Locale('ko', 'KR'),
    theme: appThemeData,
  ));
}

// class Controller extends GetxController {
//   var count = 0.obs;

//   void increment() {
//     count++;
//     update();
//   }
// }

// class Home extends StatelessWidget {
//   final controller = Get.put(Controller());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('counter')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GetBuilder<Controller>(
//               builder: (_) => Text('clikcs: ${controller.count}'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Get.to(Second());
//               },
//               child: Text('Next Route'),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           controller.increment();
//         },
//       ),
//     );
//   }
// }

// class Second extends StatelessWidget {
//   final Controller ctrl = Get.find();
//   @override
//   Widget build(context) {
//     return Scaffold(body: Center(child: Text("${ctrl.count}")));
//   }
// }
