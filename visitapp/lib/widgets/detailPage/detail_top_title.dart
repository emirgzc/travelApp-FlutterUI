// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visitapp/models/nearby.dart';
import 'package:visitapp/themes/color.dart';

class DetailTopTitle extends StatelessWidget {
  const DetailTopTitle({
    Key? key,
    required this.nearby,
  }) : super(key: key);

  final Nearby nearby;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nearby.title,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                nearby.shortDesc,
                style: TextStyle(
                  fontSize: 15,
                  color: greyColor,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.25,
            vertical: kDefaultPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "IDR 10K",
                style: TextStyle(
                  fontSize: kDefaultPadding * 1.1,
                  fontWeight: FontWeight.bold,
                  color: firstColor,
                ),
              ),
              Text(
                "For person",
                style: TextStyle(
                  fontSize: 12,
                  color: greyColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
