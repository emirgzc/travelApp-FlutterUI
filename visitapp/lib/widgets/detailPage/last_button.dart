// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visitapp/themes/color.dart';

class LastButton extends StatelessWidget {
  const LastButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kDefaultPadding * 2.5,
      width: size.width * 0.92,
      decoration: BoxDecoration(
        color: firstColor,
        borderRadius: BorderRadius.circular(9),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: blackColor.withOpacity(0.3),
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: Center(
        child: Text(
          "Book Now",
          style: TextStyle(
            color: whiteColor,
            fontWeight: FontWeight.w600,
            fontSize: kDefaultPadding,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
