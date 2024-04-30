
import 'package:flutter/material.dart';


ThemeData lightModeTheme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: const Color(0xfff8f8f8),
  primaryColor: Colors.black,
  secondaryHeaderColor: const Color(0xff3b22a1),

  cardColor: Colors.white,
);
ThemeData darkModeTheme = ThemeData(
  brightness: Brightness.dark,
  backgroundColor: const Color(0xff06090d),
  primaryColor: Colors.white,
  secondaryHeaderColor: Colors.white,

  cardColor: const Color(0xff070606),
);
