import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class AlwaysOnLogger extends LogFilter {
  @override
  bool shouldLog(LogEvent event) => true;
}

class ApplicationLogger {
  ApplicationLogger._();
  static final ApplicationLogger _singleton = ApplicationLogger._();
  static ApplicationLogger get instance => _singleton;

  final logger = Logger(
    filter: AlwaysOnLogger(),
    printer: PrettyPrinter(methodCount: 0, dateTimeFormat: DateTimeFormat.dateAndTime),
  );

  void logApplicationEvent(Object? event) {
    _logGenericMessage('NEW VALUE: $event');
  }

  void logApplicationError(String message, {dynamic error, StackTrace? stacktrace}) {
    _logDartError(message, error: error, stacktrace: stacktrace);
  }

  void logApplicationSuccess(String message) {
    _logGenericMessage('[SUCCESS] $message', level: Level.info);
  }

  void _logGenericMessage(String message, {Level level = Level.debug}) {
    logger.log(level, message);
  }

  void _logDartError(String message, {dynamic error, StackTrace? stacktrace}) {
    logger.e(message, error: error, stackTrace: stacktrace);
  }

  void logFlutterError(FlutterErrorDetails details) {
    if (kDebugMode) {
      print('Error from INSIDE framework');
      print('----------------------');
      print('Error :  ${details.exception}');
      print('StackTrace :  ${details.stack}');
    }
  }

  void logFrameworkError(Object error, StackTrace? stacktrace) {
    if (kDebugMode) {
      print('Error from OUTSIDE framework');
      print('----------------------');
      print('Error :  $error');
      print('StackTrace :  $stacktrace');
    }
  }
}
