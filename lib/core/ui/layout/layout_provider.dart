import 'package:flutter/material.dart';

extension LayoutProvider on double {
  Widget spacer({Axis axis = Axis.vertical}) {
    return SizedBox(
      width: axis == Axis.horizontal ? this : null,
      height: axis == Axis.vertical ? this : null,
    );
  }

  EdgeInsets get padding => EdgeInsets.all(this);
}

extension EdgeInsetsModifier on EdgeInsets {
  EdgeInsets get removeBottom => copyWith(bottom: 0);
  EdgeInsets get removeTop => copyWith(top: 0);
}

class DistanceProvider {
  static const double smallDistance = 6;
  static const double mediumDistance = 14;
  static const double largeDistance = 24;
  static const double hugeDistance = 56;

  static const double screenInsets = 16;
  static const double cardInsets = 16;
}
