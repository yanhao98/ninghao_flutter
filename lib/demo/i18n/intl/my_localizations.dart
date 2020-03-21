import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'my_messages_all.dart';

class MyLocalizations {
  static MyLocalizations of(BuildContext context) {
    return Localizations.of<MyLocalizations>(context, MyLocalizations);
  }

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

  static Future<MyLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();

    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return MyLocalizations();
    });
  }
}

class MyLocalizationsDelegate extends LocalizationsDelegate<MyLocalizations> {
  MyLocalizationsDelegate();

  @override
  Future<MyLocalizations> load(Locale locale) {
    return MyLocalizations.load(locale);
  }

  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  bool shouldReload(LocalizationsDelegate<MyLocalizations> old) {
    return false;
  }
}
