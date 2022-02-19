// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visitapp/themes/color.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 0.4),
      child: Container(
        height: size.width * 0.14,
        width: size.width * 0.88,
        decoration: BoxDecoration(
          color: whiteColor,
          border: Border.all(
            width: 1,
            color: greyColor.withOpacity(0.4),
          ),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: blackColor.withOpacity(0.15),
              offset: Offset(3, 5),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_right_outlined,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
