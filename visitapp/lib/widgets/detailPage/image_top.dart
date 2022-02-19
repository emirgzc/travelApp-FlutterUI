// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visitapp/models/nearby.dart';
import 'package:visitapp/themes/color.dart';

class ImageTop extends StatelessWidget {
  const ImageTop({
    Key? key,
    required this.nearby,
  }) : super(key: key);

  final Nearby nearby;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
          height: size.width * 0.90,
          width: double.infinity,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(kDefaultPadding * 1.25),
              bottomRight: Radius.circular(kDefaultPadding * 1.25),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                offset: Offset(5, 5),
                color: blackColor.withOpacity(0.2),
              ),
            ],
            border: Border.all(
              width: 1,
              color: blackColor.withOpacity(0.1),
            ),
          ),
          child: Container(
            height: size.width * 0.80,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(kDefaultPadding * 1.25),
                bottomRight: Radius.circular(kDefaultPadding * 1.25),
              ),
              border: Border.all(
                width: 1,
                color: greyColor.withOpacity(0.2),
              ),
              image: DecorationImage(
                image: AssetImage(nearby.imageURL[0]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        positionedImage(
          size,
          imageIndex: 0,
          leftSize: size.width * 0.24,
        ),
        positionedImage(
          size,
          imageIndex: 1,
          leftSize: size.width * 0.44,
        ),
        positionedImage(
          size,
          imageIndex: 2,
          leftSize: size.width * 0.64,
        ),
        Positioned(
          top: kDefaultPadding * 3.5,
          left: kDefaultPadding,
          child: Container(
            height: size.width * 0.12,
            width: size.width * 0.12,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(kDefaultPadding / 2),
              border: Border.all(
                width: 1,
                color: greyColor.withOpacity(0.8),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: kDefaultPadding / 2,
                  offset: Offset(5, 5),
                  color: blackColor.withOpacity(0.2),
                ),
              ],
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: firstColor,
                size: 30,
              ),
            ),
          ),
        )
      ],
    );
  }

  Positioned positionedImage(
    Size size, {
    required int imageIndex,
    required double leftSize,
  }) {
    return Positioned(
      bottom: 25,
      left: leftSize,
      child: Container(
        height: size.width * 0.16,
        width: size.width * 0.16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 1,
            color: greyColor.withOpacity(0.6),
          ),
          image: DecorationImage(
            image: AssetImage(
              nearby.imageURL[imageIndex],
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
