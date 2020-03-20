import 'package:intl/intl.dart';

class MyLocalizations {
  String get title => Intl.message(
        'hello',
        name: 'title',
        desc: 'demo localizations.',
      );

  String greet(String name) => Intl.message(
        'hello $name',
        name: 'greet',
        desc: 'greet someone.',
        args: [name],
      );
}
// flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/demo/i18n/intl lib/demo/i18n/intl/my_localizations.dart
