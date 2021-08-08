import 'package:daily_plan_app/screens/home/forget_password/local_widgets/foget_password_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  String email = '';

  void setUserEmail(value) {
    setState(() {
      email = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 360.w,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30.h),
            Text(
              '비밀번호 찾기',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              '가입하신 이메일을 입력하시면\n비밀번호를 초기화 할 수 있습니다.',
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 50.h),
            ForgetPasswordForm(formKey: _formKey, setUserEmail: setUserEmail),
            SizedBox(height: 50.h),
            Container(
              width: 360.w,
              height: 40.h,
              child: ElevatedButton(
                child: Text('초기화 하기'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: Colors.cyan,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
