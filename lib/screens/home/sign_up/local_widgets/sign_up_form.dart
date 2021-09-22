import 'package:daily_plan_app/constants/common_constants.dart';
import 'package:daily_plan_app/core/theme/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm(
      {Key? key,
      required this.formKey,
      required this.setEmail,
      required this.setPassword,
      required this.setConfirmPassword})
      : super(key: key);

  final GlobalKey<FormState> formKey;
  final Function setEmail;
  final Function setPassword;
  final Function setConfirmPassword;

  static String confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        child: Column(
          children: <Widget>[
            buildEmailText(),
            SizedBox(height: 20.h),
            buildPasswordText(),
            SizedBox(height: 20.h),
            buildConfirmPasswordText(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  TextFormField buildEmailText() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: loginFormInputTheme.copyWith(
        labelText: "Email",
        hintText: "이메일을 입력해주세요.",
        suffixIcon: Icon(Icons.email_outlined),
      ),
      validator: (value) {
        if (value!.isEmpty || !emailValidatorRegExp.hasMatch(value)) {
          return '이메일을 확인해주세요.';
        }
        return null;
      },
      onSaved: (value) => setEmail(value),
    );
  }

  TextFormField buildPasswordText() {
    return TextFormField(
      decoration: loginFormInputTheme.copyWith(
        labelText: "비밀번호",
        hintText: " 비밀번호를 입력해주세요.",
        suffixIcon: Icon(Icons.lock_outline),
      ),
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return '비밀번호를 확인해주세요';
        }
        confirmPassword = value;
        return null;
      },
      onSaved: (value) => setPassword(value),
    );
  }

  TextFormField buildConfirmPasswordText() {
    return TextFormField(
      decoration: loginFormInputTheme.copyWith(
        labelText: "비밀번호 확인",
        hintText: " 비밀번호를 확인해주세요.",
        suffixIcon: Icon(
          Icons.check_circle_outline_outlined,
        ),
      ),
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return '비밀번호를 확인해주세요';
        }
        if (value != confirmPassword) {
          return '비밀번호가 일치하지 않습니다.';
        }
      },
      onSaved: (value) => setConfirmPassword(value),
    );
  }
}
