import 'package:shared_preferences/shared_preferences.dart';
import 'package:surapp_flutter/core/storage/local_storage.dart';

class LocalStorageImpl implements LocalStorage {
  const LocalStorageImpl(this._preferences);

  final SharedPreferences _preferences;

  @override
  bool? getBool(LocalStorageKey key) {
    return _preferences.getBool(key.title);
  }

  @override
  Future<void> setBool(LocalStorageKey key, bool value) async {
    _preferences.setBool(key.title, value);
  }

  @override
  String? getString(LocalStorageKey key) {
    return _preferences.getString(key.title);
  }

  @override
  Future<void> setString(LocalStorageKey key, String value) async {
    _preferences.setString(key.title, value);
  }

  @override
  int? getInt(LocalStorageKey key) {
    return _preferences.getInt(key.title);
  }

  @override
  Future<void> setInt(LocalStorageKey key, int value) async {
    _preferences.setInt(key.title, value);
  }

  @override
  Future<void> remove(LocalStorageKey key) {
    return _preferences.remove(key.title);
  }
}
