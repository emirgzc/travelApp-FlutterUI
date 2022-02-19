// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:visitapp/themes/color.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: kDefaultPadding * 2.5,
        width: size.width / 1.35,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: greyColor),
          color: whiteColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: blackColor.withOpacity(0.2),
              offset: Offset(5, 5),
            ),
          ],
        ),
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.25,
                vertical: kDefaultPadding * 0.9),
            border: InputBorder.none,
            hintText: "Find a place you will visit",
            hintStyle: TextStyle(fontSize: 14),
            suffixIcon: Icon(
              Icons.search,
              size: 15,
              color: firstColor,
            ),
          ),
        ),
      ),
    );
  }
}
