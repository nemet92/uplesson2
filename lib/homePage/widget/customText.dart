import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    this.textColor,
    required this.text,
    this.fontSize,
    this.fontWeight,
    Key? key,
  }) : super(key: key);
  final String text;
  final double? fontSize;
  final Color? textColor;
  // ignore: prefer_typing_uninitialized_variables
  var fontWeight;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize, color: textColor, fontWeight: fontWeight),
    );
  }
}
