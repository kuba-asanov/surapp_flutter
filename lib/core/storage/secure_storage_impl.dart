import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:surapp_flutter/common/utils/data_parser.dart';
import 'package:surapp_flutter/common/utils/try_or_utils.dart';
import 'package:surapp_flutter/core/storage/secure_storage.dart';

class SecureStorageImpl implements SecureStorage {
  final FlutterSecureStorage _storage = const FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
  );

  @override
  Future<String?> getValue(SecureStorageKey key) async {
    return _storage.read(key: key.title);
  }

  @override
  Future<void> setValue(SecureStorageKey key, String value) async {
    return _storage.write(key: key.title, value: value);
  }

  @override
  Future<void> deleteValue(SecureStorageKey key) async {
    return _storage.delete(key: key.title);
  }

  @override
  Future<void> deleteAllValues() {
    return _storage.deleteAll();
  }

  @override
  Future<P?> getJson<P>(
    SecureStorageKey key, {
    required DataParser<P> parser,
  }) async {
    final jsonString = await getValue(key);
    if (jsonString == null) return null;
    final data = jsonDecode(jsonString);
    return tryOrNull(() => parser.parse(data));
  }

  @override
  Future<void> saveJson(SecureStorageKey key, Object data) async {
    final value = jsonEncode(data);
    setValue(key, value);
  }
}
