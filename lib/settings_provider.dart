import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String currentLanguage = "en";

  selectArabicLanguage() {
    currentLanguage = "ar";
    notifyListeners();
  }

  selectEnglishLanguage() {
    currentLanguage = "en";
    notifyListeners();
  }

  enableDarkTheme() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  enableLightTheme() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }

  bool isDark() {
    return themeMode == ThemeMode.dark;
  }

  String selectBackground() {
    if (isDark()) {
      notifyListeners();
      return "assest/image/background_dark.png";
    } else {
      notifyListeners();
      return "assest/image/background_light.png";
    }
  }
}
