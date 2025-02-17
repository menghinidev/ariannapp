import 'package:ariannapp/features/horoscope/shared/model/horoscope.dart';
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
      'assets/images/horoscope/${sign.name}-sign.svg',
      width: size,
      height: size,
      fit: BoxFit.scaleDown,
      placeholderBuilder: (context) => SizedBox(
        width: size,
        height: size,
        child: Center(child: Text(sign.name.substring(0, 2).toUpperCase())),
      ),
      colorFilter: ColorFilter.mode(
        Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
        BlendMode.srcIn,
      ),
    );
  }

  double get size => 64;
}
