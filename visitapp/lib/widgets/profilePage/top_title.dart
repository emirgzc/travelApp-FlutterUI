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
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.25),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            "Profile",
            style: TextStyle(
              fontSize: kDefaultPadding,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
