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

class DistanceProvider {
  static const double smallDistance = 6;
  static const double mediumDistance = 16;
  static const double largeDistance = 24;
  static const double hugeDistance = 56;

  static const double screenInsets = 20;
  static const double cardInsets = 16;
}
