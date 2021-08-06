import 'package:daily_plan_app/constants/common_constants.dart';
import 'package:daily_plan_app/core/theme/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.formKey,
    required this.setEmail,
    required this.setPassword,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final Function setEmail;
  final Function setPassword;

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
          ],
        ),
      ),
    );
  }

  TextFormField buildPasswordText() {
    return TextFormField(
      decoration: loginFormInputTheme.copyWith(
        labelText: "Password",
        hintText: " 비밀번호를 입력해주세요.",
        suffixIcon: Icon(Icons.lock_outline),
      ),
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return '비밀번호를 확인해주세요';
        }
        return null;
      },
      onSaved: (value) => setPassword(value),
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
}
