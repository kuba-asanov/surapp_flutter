import 'package:surapp_flutter/common/utils/data_parser.dart';

abstract class SecureStorage {
  Future<String?> getValue(SecureStorageKey key);

  Future<void> setValue(SecureStorageKey key, String value);

  Future<void> deleteValue(SecureStorageKey key);

  Future<void> deleteAllValues();

  Future<P?> getJson<P>(SecureStorageKey key, {required DataParser<P> parser});

  Future<void> saveJson(SecureStorageKey key, Object data);
}

enum SecureStorageKey {
  authToken('authToken');

  const SecureStorageKey(this.title);

  final String title;
}
