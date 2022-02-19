// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:visitapp/themes/color.dart';
import 'package:visitapp/themes/desc.dart';

class DescAndMapIcon extends StatelessWidget {
  const DescAndMapIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Flexible(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.1,
                vertical: kDefaultPadding / 4),
            child: SizedBox(
              width: size.width * 0.8,
              child: Text(desc),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(
                  Icons.map,
                  size: kDefaultPadding * 1.5,
                  color: firstColor,
                ),
                Text(
                  "View On Maps",
                  style: TextStyle(
                    fontSize: 13,
                    color: firstColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
