import 'package:flutter/material.dart';

class CustomCatagoryContainer extends StatelessWidget {
  const CustomCatagoryContainer({
    required this.decorationColor,
    required this.icon,
    this.iconColor,
    // required this.text,
    Key? key,
  }) : super(key: key);
  final Color decorationColor;
  final Icon icon;
  final Color? iconColor;
  // final String? text;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: decorationColor,
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: IconButton(
        onPressed: () {
          print("object");
        },
        icon: icon,
        color: Colors.white,
      ),
    );
  }
}
