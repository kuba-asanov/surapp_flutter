// ignore_for_file: always_use_package_imports, unnecessary_string_escapes

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localization.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get homeTitle => 'Образцы предметов';

  @override
  String get settings => 'Настройки';

  @override
  String get systemTheme => 'Системная тема';

  @override
  String get lightTheme => 'Светлая тема';

  @override
  String get darkTheme => 'Темная тема';

  @override
  String sampleItem(num number) {
    return 'Образец предмета $number';
  }

  @override
  String get theme => 'Тема';

  @override
  String get localization => 'Локализация';
}
