import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  TitleText({
    super.key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 24,
    this.overflow = TextOverflow.ellipsis,
  });
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w900,
      ),
      textAlign: TextAlign.center,
    );
  }
}
