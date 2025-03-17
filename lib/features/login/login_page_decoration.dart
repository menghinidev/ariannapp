import 'package:ariannapp/core/ui/theme/theme_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class LoginPaintBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final paint = Paint()..color = AppColors.logoBackground;
    final backgroundPath = Path()
      ..lineTo(rect.topLeft.dx, rect.topLeft.dy + rect.height * 0.7)
      ..quadraticBezierTo(
        rect.topLeft.dx + rect.width * 0.25,
        rect.topLeft.dy + rect.height * 0.8,
        rect.topLeft.dx + rect.width * 0.5,
        rect.topLeft.dy + rect.height * 0.7,
      )
      ..quadraticBezierTo(
        rect.topLeft.dx + rect.width * 0.75,
        rect.topLeft.dy + rect.height * 0.6,
        rect.topLeft.dx + rect.width,
        rect.topLeft.dy + rect.height * 0.7,
      )
      ..lineTo(rect.topRight.dx, rect.topRight.dy) //7
      ..close();
    canvas.drawPath(backgroundPath, paint);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) {
      final rect = Offset.zero & size;
      return [
        CustomPainterSemantics(
          rect: rect,
          properties: const SemanticsProperties(
            label: 'Background',
            textDirection: TextDirection.ltr,
          ),
        ),
      ];
    };
  }

  @override
  bool shouldRepaint(LoginPaintBackground oldDelegate) => false;
  @override
  bool shouldRebuildSemantics(LoginPaintBackground oldDelegate) => false;
}
