import 'package:flutter/material.dart';
import 'package:ninghao_flutter/demo/i18n/map/my_localizations.dart';

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
          ],
        ),
      ),
    );
  }
}
