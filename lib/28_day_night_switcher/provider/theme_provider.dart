import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyTheme {
  static final lightTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(color: Colors.deepPurple),
    scaffoldBackgroundColor: Colors.deepPurple[100],
  );
  static final darkTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(color: Color(0xFF253341)),
    scaffoldBackgroundColor: const Color(0xFF15202B),
  );
}
