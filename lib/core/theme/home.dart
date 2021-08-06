import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final InputDecoration loginFormInputTheme = InputDecoration(
  floatingLabelBehavior: FloatingLabelBehavior.always,
  contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: Colors.cyan),
    gapPadding: 10,
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: Colors.cyan),
    gapPadding: 10,
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: Colors.red),
    gapPadding: 10,
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: Colors.red),
    gapPadding: 10,
  ),
);
