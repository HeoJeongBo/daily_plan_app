import 'package:daily_plan_app/screens/home/login/local_widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();

  String password = '';
  String email = '';
  bool isAutoLogin = false;

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

  void onClickAutoLogin(value) {
    setState(() {
      isAutoLogin = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 360.w,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30.h),
            Text(
              "환영합니다.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.sp,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.h),
            Text(
              "이메일과 비밀번호를 입력해 로그인해주세요.\n구글을 이용한 로그인은 추후에 제공 예정입니다.",
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50.h),
            LoginForm(
              formKey: _formKey,
              setEmail: setEmail,
              setPassword: setPassword,
            ),
            SizedBox(height: 30.h),
            buildAutoLoginAndForgetPassword(),
            SizedBox(height: 10.h),
            buildLoginButton(),
            SizedBox(height: 50.h),
            buildToSignUp()
          ],
        ),
      ),
    );
  }

  Row buildToSignUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '아직 회원이 아니신가요 ? ',
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed('/SIGN_UP');
          },
          child: Text(
            "회원가입 하러 가기",
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w800,
              color: Colors.cyan,
            ),
          ),
        ),
      ],
    );
  }

  Row buildAutoLoginAndForgetPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Checkbox(
                  activeColor: Colors.cyan,
                  value: isAutoLogin,
                  onChanged: (value) {
                    onClickAutoLogin(value);
                  }),
              Text("자동 로그인")
            ],
          ),
        ),
        GestureDetector(
            onTap: () {
              Get.toNamed('/FORGET_PASSWORD');
            },
            child: Text('비밀번호 찾기')),
      ],
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
