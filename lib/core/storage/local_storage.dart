abstract class LocalStorage {
  bool? getBool(LocalStorageKey key);

  Future<void> setBool(LocalStorageKey key, bool value);

  String? getString(LocalStorageKey key);

  Future<void> setString(LocalStorageKey key, String value);

  int? getInt(LocalStorageKey key);

  Future<void> setInt(LocalStorageKey key, int value);

  Future<void> remove(LocalStorageKey key);
}

enum LocalStorageKey {
  themeMode('themeMode'),
  isFirstRun('isFirstRun'),
  locale('locale');

  const LocalStorageKey(this.title);

  final String title;
}
