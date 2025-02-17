class EnvVariable {
  static const String mode = String.fromEnvironment('MODE', defaultValue: 'lite');
}

extension EnvVariableExtension on String {
  bool get isLite => this == 'lite';
  bool get isPro => this == 'pro';
  bool get isDev => this == 'dev';
  bool get isTest => this == 'test';
}
