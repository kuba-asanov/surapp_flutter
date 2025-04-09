// ignore_for_file: always_use_package_imports, unnecessary_string_escapes

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localization.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get homeTitle => 'Sample Items';

  @override
  String get settings => 'Settings';

  @override
  String get systemTheme => 'System Theme';

  @override
  String get lightTheme => 'Light Theme';

  @override
  String get darkTheme => 'Dark Theme';

  @override
  String sampleItem(num number) {
    return 'SampleItem $number';
  }

  @override
  String get theme => 'Theme';

  @override
  String get localization => 'Localization';
}
