// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visitapp/themes/color.dart';

class TopTitle extends StatelessWidget {
  const TopTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            "Discover",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "let's find your best place and",
            style: TextStyle(
              fontSize: kDefaultPadding,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "explore this world",
            style: TextStyle(
              fontSize: kDefaultPadding,
              fontWeight: FontWeight.bold,
              color: firstColor,
            ),
          ),
        ],
      ),
    );
  }
}
