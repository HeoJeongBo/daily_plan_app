import 'package:daily_plan_app/screens/home/common/body_container.dart';
import 'package:daily_plan_app/screens/home/sign_up/local_widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String confirmPassword = '';

  void setEmail(value) {
    this.email = value;
  }

  void setPassword(value) {
    this.password = value;
  }

  void setConfirmPassword(value) {
    this.confirmPassword = value;
  }

  @override
  Widget build(BuildContext context) {
    return BodyContainer(
      children: <Widget>[
        SizedBox(
          height: 30.h,
        ),
        SignUpForm(
          formKey: this._formKey,
          setEmail: this.setEmail,
          setPassword: this.setPassword,
          setConfirmPassword: this.setConfirmPassword,
        ),
        buildSignUpButton(),
      ],
    );
  }

  Container buildSignUpButton() {
    return Container(
      width: 360.w,
      height: 40.h,
      child: ElevatedButton(
        child: Text(
          "회원가입",
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
