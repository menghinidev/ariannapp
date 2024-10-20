import 'dart:math';

class IDGenerator {
  static String get generateId {
    return Random().nextInt(1000).toString();
  }
}
