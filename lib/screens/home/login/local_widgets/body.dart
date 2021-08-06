import 'package:daily_plan_app/screens/home/login/local_widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();

  String password = '';
  String email = '';

  void setEmail(value) {
    setState(() {
      email = value;
    });
  }

  void setPassword(value) {
    setState(() {
      password = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(password);
    print(email);
    return SafeArea(
      child: Container(
        width: 360.w,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 15.h),
            Text(
              "환영합니다.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.sp,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "이메일과 비밀번호를 입력해 로그인해주세요.\n구글을 이용한 로그인은 추후에 제공 예정입니다.",
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15.h),
            LoginForm(
              formKey: _formKey,
              setEmail: setEmail,
              setPassword: setPassword,
            ),
            SizedBox(height: 15.h),
            buildLoginButton()
          ],
        ),
      ),
    );
  }

  Container buildLoginButton() {
    return Container(
      width: 360.w,
      height: 40.h,
      child: ElevatedButton(
        child: Text(
          "로그인",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          primary: Colors.cyan,
        ),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState?.save();
          }
        },
      ),
    );
  }
}
