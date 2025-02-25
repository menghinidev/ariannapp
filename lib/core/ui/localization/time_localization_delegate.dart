import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeLocalization {

  TimeLocalization(this.localeName);
  final String localeName;

  static Future<TimeLocalization> load(Locale locale) async {
    final name = locale.countryCode == null ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    Intl.defaultLocale = localeName;
    return TimeLocalization(localeName);
  }

  static TimeLocalization? of(BuildContext context) {
    return Localizations.of<TimeLocalization>(context, TimeLocalization);
  }
}

class TimeLocalizationDelegate extends LocalizationsDelegate<TimeLocalization> {
  const TimeLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<TimeLocalization> load(Locale locale) => TimeLocalization.load(locale);

  @override
  bool shouldReload(TimeLocalizationDelegate old) => false;
}
