import 'package:daily_plan_app/screens/home/forget_password/local_widgets/body.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("비밀번호 찾기")),
      body: Body(),
    );
  }
}
