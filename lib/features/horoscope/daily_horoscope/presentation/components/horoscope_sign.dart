import 'package:ariannapp/features/horoscope/shared/horoscope/horoscope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HoroscopeSignIcon extends StatelessWidget {
  const HoroscopeSignIcon({
    required this.sign,
    super.key,
  });

  final HoroscopeSign sign;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/horoscope/${sign.name}_sign.svg',
      width: size,
      height: size,
      colorFilter: ColorFilter.mode(
        Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
        BlendMode.srcIn,
      ),
    );
  }

  double get size => 64;
}
