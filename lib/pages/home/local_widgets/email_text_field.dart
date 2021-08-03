import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
    required this.emailController,
  }) : super(key: key);

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 20.0, height: 1.5),
      decoration: InputDecoration(
        labelText: 'EMAIL',
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey,
          fontSize: 15.0,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
      controller: emailController,
      cursorHeight: 20.0,
    );
  }
}
