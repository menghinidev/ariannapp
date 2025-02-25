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
    _logGenericMessage('[NEW-STATE]: $event');
  }

  void logApplicationError(String message, {dynamic error, StackTrace? stacktrace}) {
    _logExceptionError('[ERROR] $message', error: error, stacktrace: stacktrace);
  }

  void logApplicationSuccess(String message) {
    _logGenericMessage('[SUCCESS] $message', level: Level.info);
  }

  void _logGenericMessage(String message, {Level level = Level.debug}) {
    logger.log(level, message);
  }

  void _logExceptionError(String message, {dynamic error, StackTrace? stacktrace}) {
    logger.e(message, error: error, stackTrace: stacktrace);
  }

  void logFlutterError(FlutterErrorDetails details) {
    _logDartError(
      'INSIDE framework',
      error: details.exception,
      stacktrace: details.stack,
    );
  }

  void logFrameworkError(Object error, StackTrace? stacktrace) {
    _logDartError(
      'OUTSIDE framework',
      error: error,
      stacktrace: stacktrace,
    );
  }

  void _logDartError(String context, {required Object error, StackTrace? stacktrace}) {
    if (kDebugMode) {
      print('Error from: $context');
      print('----------------------');
      print('Error :  $error');
      print('StackTrace :  $stacktrace');
    }
  }
}
