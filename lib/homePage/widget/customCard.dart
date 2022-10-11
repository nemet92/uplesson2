import 'package:flutter/material.dart';
import 'package:uplabslesson2/const/AppColor.dart';

import '../../const/AppPath.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const SizedBox(
        height: 50,
        width: 50,
        child: Card(
          elevation: 3,
          shadowColor: AppColor.cardShadowColor,
          shape: StadiumBorder(),
          child: Icon(
            AppPath.cardIcon,
            color: AppColor.cardIconColor,
          ),
        ),
      ),
    );
  }
}
