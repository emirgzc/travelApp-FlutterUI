// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visitapp/pages/succes_page.dart';
import 'package:visitapp/themes/color.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: kDefaultPadding * 0.98,
                backgroundImage: AssetImage("assets/images/b.jpeg"),
              ),
              SizedBox(width: 15),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Hello Skylar",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.health_and_safety)
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Yogyakarta, Indonesia",
                    style: TextStyle(
                      fontSize: 14,
                      color: greyColor.withOpacity(0.8),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: kDefaultPadding * 2,
            width: kDefaultPadding * 2,
            decoration: BoxDecoration(
              color: whiteColor,
              border: Border.all(
                width: 1,
                color: greyColor.withOpacity(0.5),
              ),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: blackColor.withOpacity(0.2),
                  offset: Offset(5, 5),
                ),
              ],
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SuccesPage(),
                  ),
                );
              },
              icon: Icon(Icons.alarm),
              color: firstColor,
            ),
          ),
        ],
      ),
    );
  }
}
