// ignore_for_file: avoid-dynamic

import 'package:flutter/material.dart';
import 'package:surapp_flutter/common/utils/extended_error.dart';

abstract class DataParser<T> {
  T parse(dynamic data);
}

class ListParser<T> implements DataParser<List<T>> {
  ListParser(
    this._converter, {
    this.forKey,
  });

  final T Function(Map<String, dynamic> data) _converter;
  final String? forKey;

  @override
  List<T> parse(dynamic data) {
    try {
      return forKey == null
          ? List<T>.from(
              data.map((json) => _converter(json as Map<String, dynamic>)),
            )
          : List<T>.from(data[forKey]
              .map((json) => _converter(json as Map<String, dynamic>)));
    } catch (e, s) {
      debugPrint("$e, $s");
      throw const ParseError();
    }
  }
}

class ObjectParser<T> implements DataParser<T> {
  ObjectParser(this._converter);

  final T Function(Map<String, dynamic> data) _converter;

  @override
  T parse(dynamic data) {
    try {
      return _converter(data as Map<String, dynamic>);
    } catch (e, s) {
      debugPrint("$e, $s");
      throw const ParseError();
    }
  }
}

class RawParser<T> implements DataParser<T> {
  RawParser(this._converter);

  final T Function(String data) _converter;

  @override
  T parse(dynamic data) {
    try {
      return _converter(data as String);
    } catch (e, s) {
      debugPrint("$e, $s");
      throw const ParseError();
    }
  }
}
