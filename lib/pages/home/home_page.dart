import 'package:daily_plan_app/pages/home/local_widgets/email_text_field.dart';
import 'package:daily_plan_app/pages/home/local_widgets/password_text_field.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              getLogo(),
              SizedBox(height: 30.0),
              EmailTextField(emailController: emailController),
              SizedBox(height: 20.0),
              PasswordTextField(passwordController: passwordController),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  print('asdasd');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  minimumSize: Size(MediaQuery.of(context).size.width, 60.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  '로그인',
                  style: TextStyle(fontSize: 20.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container getLogo() {
    return Container(
      child: Row(
        children: [
          Text(
            "하루 알람",
            style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.w900),
          ),
          Text(
            ".",
            style: TextStyle(fontSize: 80.0, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
