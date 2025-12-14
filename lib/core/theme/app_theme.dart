import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  AppTheme._();
  static ThemeData get light => ThemeData(
    colorScheme: ColorScheme.light(
      primary: Colors.green,
    ),
    appBarTheme: AppBarTheme(
      elevation: 3, 
      shadowColor: const Color.fromARGB(101, 0, 0, 0),
      foregroundColor: Colors.black,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
  static ThemeData get dark => ThemeData(
    colorScheme: ColorScheme.dark(),

    appBarTheme: AppBarTheme(
      elevation: 4, 
      shadowColor: Colors.black,
      shape: Border(bottom: BorderSide(color: Colors.black12, width: 1)),
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
