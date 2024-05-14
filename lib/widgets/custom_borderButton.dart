import 'package:flutter/material.dart';

class CustomBorderButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color? borderColor;
  final double borderWidth;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry? padding;
  final Color? bgColor;

  const CustomBorderButton({
    super.key,
    required this.child,
    required this.onPressed,
    required this.borderWidth,
    required this.borderRadius,
    this.borderColor = Colors.transparent,
    this.padding,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(
            color: borderColor!,
            width: borderWidth,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        padding: MaterialStateProperty.all(padding),
        backgroundColor: MaterialStateProperty.all(bgColor),
      ),
      child: child,
    );
  }
}
