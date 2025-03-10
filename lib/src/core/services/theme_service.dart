import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeService extends ChangeNotifier {
  static const String _themePrefKey = 'themeMode';

  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;

  Future<void> initializeTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final savedMode = prefs.getString(_themePrefKey) ?? 'system';

    _themeMode = (savedMode == 'light')
        ? ThemeMode.light
        : (savedMode == 'dark' ? ThemeMode.dark : ThemeMode.system);
    notifyListeners();
  }

  Future<void> _saveThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    String modeString = 'system';

    modeString = _themeMode == ThemeMode.light
        ? 'light'
        : (_themeMode == ThemeMode.dark)
            ? 'dark'
            : 'system';

    await prefs.setString(_themePrefKey, modeString);
  }

  void toggleTheme(bool isDark) {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    _saveThemePreference();
    notifyListeners();
  }
}
