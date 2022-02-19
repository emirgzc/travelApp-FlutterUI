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
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            "My Favorite",
            style: TextStyle(
              fontSize: kDefaultPadding,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.more_horiz,
            size: kDefaultPadding * 1.5,
          ),
        ],
      ),
    );
  }
}
