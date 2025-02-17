class EnvVariable {
  static const String mode = String.fromEnvironment('MODE', defaultValue: 'lite');
}

extension EnvVariableExtension on String {
  bool get isLite => this == 'lite';
  bool get isFull => this == 'full';
}
