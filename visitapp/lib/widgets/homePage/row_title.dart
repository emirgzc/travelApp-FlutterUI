// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visitapp/themes/color.dart';

class RowTitle extends StatelessWidget {
  final String? leftTitle;
  final String? rightTitle;
  final VoidCallback? press;
  const RowTitle({
    Key? key,
    this.leftTitle,
    this.rightTitle,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            leftTitle.toString(),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: firstColor,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              rightTitle.toString(),
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: firstColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
