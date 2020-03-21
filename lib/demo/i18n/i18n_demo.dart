import 'package:flutter/material.dart';
// import 'package:ninghao_flutter/demo/i18n/map/my_localizations.dart';
import '../../demo/i18n/intl/my_localizations.dart';

class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('I18nDemo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${locale.toString()}'),
            Text(
              // Localizations.of(context, MyLocalizations).title,
              MyLocalizations.of(context).title,
              style: Theme.of(context).textTheme.title,
            ),
            Text(
              MyLocalizations.of(context).greet('ninghao'),
              style: Theme.of(context).textTheme.title,
            ),
          ],
        ),
      ),
    );
  }
}

// flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/demo/i18n/intl lib/demo/i18n/intl/my_localizations.dart
// flutter pub pub run intl_translation:generate_from_arb --generated-file-prefix=my_ --output-dir=lib/demo/i18n/intl/ --no-use-deferred-loading lib/demo/i18n/intl/my_localizations.dart lib/demo/i18n/intl/intl_*.arb
