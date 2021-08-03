import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 20.0, height: 1.5),
      decoration: InputDecoration(
        labelText: 'PASSWORD',
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey,
          fontSize: 15.0,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
      controller: passwordController,
      obscureText: true,
      cursorHeight: 20.0,
    );
  }
}
