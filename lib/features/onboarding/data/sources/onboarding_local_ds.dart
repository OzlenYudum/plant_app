import 'package:shared_preferences/shared_preferences.dart';

abstract class OnboardingLocalDataSource {
  Future<bool> getCompleted();
  Future<void> setCompleted(bool value);
}

class OnboardingLocalDataSourceImpl implements OnboardingLocalDataSource {
  OnboardingLocalDataSourceImpl(this.prefs);
  final SharedPreferences prefs;

  static const _kKey = 'onboarding_completed';

  @override
  Future<bool> getCompleted() async => prefs.getBool(_kKey) ?? false;

  @override
  Future<void> setCompleted(bool value) async {
    await prefs.setBool(_kKey, value);
  }
}