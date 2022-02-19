// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:visitapp/models/nearby.dart';
import 'package:visitapp/themes/color.dart';

class BuildCard extends StatelessWidget {
  final double height;
  final Nearby nearby;

  const BuildCard({
    Key? key,
    required this.height,
    required this.nearby,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2,
        vertical: kDefaultPadding / 4,
      ),
      child: Stack(
        children: [
          Container(
            height: height,
            width: size.width * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kDefaultPadding / 1.8),
              image: DecorationImage(
                image: AssetImage(nearby.imageURL[0]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: size.width * 0.48,
              padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: blackColor.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(kDefaultPadding / 2),
                  bottomRight: Radius.circular(kDefaultPadding * 1.5),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          nearby.title,
                          style: TextStyle(
                            fontSize: 13.5,
                            fontWeight: FontWeight.bold,
                            color: whiteColor.withOpacity(0.9),
                          ),
                        ),
                        Text(
                          nearby.shortDesc,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: whiteColor.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
