// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visitapp/themes/color.dart';

class SearchAndIcon extends StatelessWidget {
  const SearchAndIcon({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: kDefaultPadding * 2.5,
            width: size.width / 1.30,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: greyColor),
              color: whiteColor,
              borderRadius: BorderRadius.circular(kDefaultPadding / 2),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: blackColor.withOpacity(0.2),
                  offset: Offset(5, 5),
                ),
              ],
            ),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 1.25,
                    vertical: kDefaultPadding),
                border: InputBorder.none,
                hintText: "Find a place you will visit",
                hintStyle: TextStyle(fontSize: 14, color: greyColor),
                suffixIcon: Icon(
                  Icons.search,
                  size: 15,
                  color: firstColor,
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: size.width * 0.130,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 1,
                color: greyColor,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: blackColor.withOpacity(0.2),
                  offset: Offset(5, 5),
                ),
              ],
            ),
            child: Icon(
              Icons.filter_list,
              color: greyColor,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
