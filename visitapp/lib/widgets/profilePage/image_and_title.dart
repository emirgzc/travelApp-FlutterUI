// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visitapp/themes/color.dart';

class ImageAndTitle extends StatelessWidget {
  const ImageAndTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CircleAvatar(
            radius: kDefaultPadding * 3.5,
            backgroundImage: AssetImage("assets/images/s4.jpeg"),
          ),
          SizedBox(height: kDefaultPadding * 0.75),
          Text(
            "Muhammed Emir Gözcü",
            style: TextStyle(
              fontSize: kDefaultPadding,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.75,
            ),
          )
        ],
      ),
    );
  }
}
