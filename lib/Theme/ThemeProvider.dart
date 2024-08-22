import 'package:dart_mode/Theme/Theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  // set default theme is lightMode
  ThemeData _themeData = lightMode;

  // get theme data out side of function b/c to change the theme
  ThemeData get themeData => _themeData;

  // receive themeData and set in to _themeData
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // change theme data
  void toggleTheme() {
    if (_themeData == lightMode) {
      _themeData = dartMode;
    } else {
      _themeData = lightMode;
    }
  }
}
