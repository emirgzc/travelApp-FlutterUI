// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visitapp/pages/detail_page.dart';
import 'package:visitapp/themes/color.dart';
import 'package:visitapp/models/nearby.dart';

class NearbyCard extends StatelessWidget {
  final Nearby nearby;
  final double widthNear;
  final bool openTitle;
  const NearbyCard({
    Key? key,
    required this.nearby,
    required this.widthNear,
    this.openTitle = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  nearby: nearby,
                ),
              ),
            );
          },
          child: Container(
            height: kDefaultPadding * 8.5,
            width: widthNear,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kDefaultPadding / 2),
              image: DecorationImage(
                image: AssetImage(nearby.imageURL[0]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            width: widthNear,
            decoration: BoxDecoration(
              color: blackColor.withOpacity(0.4),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(kDefaultPadding / 2),
                bottomRight: Radius.circular(kDefaultPadding / 2),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          nearby.title,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: whiteColor.withOpacity(0.8),
                          ),
                        ),
                        Text(
                          nearby.shortDesc,
                          style: TextStyle(
                            fontSize: kDefaultPadding / 2,
                            fontWeight: FontWeight.bold,
                            color: whiteColor.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                  openTitle == true
                      ? Flexible(
                          flex: 2,
                          child: Text(
                            "Open View",
                            style: TextStyle(
                              fontSize: 9,
                              color: firstColor,
                            ),
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
