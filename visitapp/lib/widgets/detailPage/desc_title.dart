// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visitapp/themes/color.dart';

class DescTitle extends StatelessWidget {
  const DescTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: kDefaultPadding,
                    color: firstColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 2,
                  width: kDefaultPadding * 4.5,
                  decoration: BoxDecoration(
                    color: firstColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: kDefaultPadding * 0.75),
        ],
      ),
    );
  }
}
