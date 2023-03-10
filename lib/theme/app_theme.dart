import 'package:flutter/material.dart';

class AppTheme{
  static const Color whiteSky = Color(0xffF6FAFF);
  static const Color sky100 = Color(0xff5AA9E6);
  static const Color black100 = Color(0xff363D4F);
  static const Color black70 = Color(0xff707684);
  static const Color black50 = Color(0xff969BA6);
  static const Color black10 = Color(0xffE3E7EE);
  static final ThemeData themeConfig = ThemeData.light().copyWith(
    scaffoldBackgroundColor: whiteSky,
    useMaterial3: true
  );


}