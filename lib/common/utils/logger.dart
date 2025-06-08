import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final dioLogger = PrettyDioLogger(
  enabled: kDebugMode,
  requestHeader: true,
  requestBody: true,
  responseBody: true,
  responseHeader: false,
  error: true,
  compact: true,
  maxWidth: 120,
  filter: (options, args) {
    // don't print responses with unit8 list data
    return !args.hasUint8ListData;
  },
);

final logger = Logger(
  level: kDebugMode ? Level.debug : Level.off,
  printer: PrettyPrinter(
    methodCount: 1,
    colors: Platform.isIOS ? false : true,
    dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
  ),
);
