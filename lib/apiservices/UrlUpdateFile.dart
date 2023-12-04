import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../pages/loginpage.dart';

class AppConfig {
  static const String _baseUrlKey = 'base_url';
  static const String defaultBaseUrl = 'http://154.26.130.251:326';

  static SharedPreferences? _preferences;

  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static String get baseUrl =>
      _preferences?.getString(_baseUrlKey) ?? defaultBaseUrl;

  static Future<void> setBaseUrl(String url) async {
    print("Santhosh$url");
    await _preferences?.setString(_baseUrlKey, url);
    print({_baseUrlKey, url});
  }


  static Future<void> saveIsToggle(
      {required bool isRegistrationDone}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('Toggle_on', isRegistrationDone);
  }

  static Future<bool> getIsToggle() async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.getBool('Toggle_on') ?? false;
  }

  static Future<void> saveActvationCode({required String key, required String value}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  static Future<String?> getActivationCode({required String key}) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

}
