// ignore_for_file: prefer_const_constructors, unused_local_variable, unused_element

import 'package:flutter/material.dart';
import 'package:visitapp/models/nearby.dart';
import 'package:visitapp/themes/color.dart';

class InfoCard extends StatelessWidget {
  final Nearby nearby;
  const InfoCard({
    Key? key,
    required this.nearby,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var weatherIconIndex = nearby.weatherIcon;
    IconData iconType = Icons.cloud;
    Color iconTypeColor = Colors.blue;

    IconData iconRet() {
      switch (weatherIconIndex) {
        case 1:
          iconType = Icons.cloud_queue;
          break;
        case 2:
          iconType = Icons.wb_sunny;
          break;
        case 3:
          iconType = Icons.snowboarding;
          break;
        default:
      }
      return iconType;
    }

    Color colorRet() {
      switch (weatherIconIndex) {
        case 1:
          iconTypeColor = Colors.blue;
          break;
        case 2:
          iconTypeColor = Colors.amber;
          break;
        case 3:
          iconTypeColor = Colors.blueAccent;
          break;
        default:
      }
      return iconTypeColor;
    }

    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          oneCard(
            icon: Icons.star,
            text: nearby.star,
            color: Colors.amber,
          ),
          SizedBox(width: size.width * 0.08),
          oneCard(
            icon: Icons.timer,
            text: nearby.hours + " Hours",
            color: firstColor,
          ),
          SizedBox(width: size.width * 0.08),
          oneCard(
            icon: iconRet(),
            text: nearby.weather,
            color: colorRet(),
          ),
          SizedBox(width: size.width * 0.08),
          oneCard(
            icon:
                nearby.isAll == true ? Icons.car_repair : Icons.directions_walk,
            text: nearby.isAll == true ? "All" : "Limited",
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }

  Container oneCard({
    required IconData icon,
    required String text,
    required Color color,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: kDefaultPadding * 3,
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          width: 1,
          color: greyColor.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: blackColor.withOpacity(0.18),
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Flexible(
            flex: 2,
            child: Icon(
              icon,
              color: color,
            ),
          ),
          Flexible(
            flex: 2,
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
