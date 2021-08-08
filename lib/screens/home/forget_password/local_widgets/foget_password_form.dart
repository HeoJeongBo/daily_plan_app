import 'package:daily_plan_app/constants/common_constants.dart';
import 'package:daily_plan_app/core/theme/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm(
      {Key? key, required this.formKey, required this.setUserEmail})
      : super(key: key);

  final GlobalKey<FormState> formKey;
  final Function setUserEmail;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        child: TextFormField(
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
          onSaved: (value) => setUserEmail(value),
        ),
      ),
    );
  }
}
