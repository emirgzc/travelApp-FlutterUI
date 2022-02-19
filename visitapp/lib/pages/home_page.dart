// ignore_for_file: prefer_const_constructors, unused_local_variable, deprecated_member_use, camel_case_types

import 'package:flutter/material.dart';
import 'package:visitapp/models/nearby.dart';
import 'package:visitapp/themes/color.dart';
import 'package:visitapp/widgets/bottom_nav_bar.dart';
import 'package:visitapp/widgets/homePage/nearby_card.dart';
import 'package:visitapp/widgets/homePage/row_title.dart';
import 'package:visitapp/widgets/homePage/search_widget.dart';
import 'package:visitapp/widgets/homePage/top_title.dart';
import 'package:visitapp/widgets/homePage/topbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBar(),
            SizedBox(height: kDefaultPadding),
            TopTitle(),
            SizedBox(height: kDefaultPadding * 1.25),
            SearchWidget(size: size),
            SizedBox(height: kDefaultPadding),
            RowTitle(
              leftTitle: "Nearby",
              rightTitle: "View More",
            ),
            SizedBox(height: kDefaultPadding * 0.75),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    allNearby.length ~/ 2,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                        left: index == 0
                            ? kDefaultPadding
                            : kDefaultPadding * 1.25,
                        right: (allNearby.length ~/ 2) - 1 == index
                            ? kDefaultPadding * 1.5
                            : 0,
                      ),
                      child: NearbyCard(
                        nearby: allNearby[index],
                        widthNear: size.width * 0.39,
                        openTitle: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: kDefaultPadding * 1.5),
            RowTitle(
              leftTitle: "Popular Now",
              rightTitle: "View More",
            ),
            SizedBox(height: kDefaultPadding),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    allNearby.length ~/ 2,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                        left: index == 0
                            ? kDefaultPadding
                            : kDefaultPadding * 1.25,
                        right: (allNearby.length ~/ 2) - 1 == index
                            ? kDefaultPadding * 1.5
                            : 0,
                      ),
                      child: NearbyCard(
                        nearby: allNearby[index],
                        widthNear: size.width * 0.34,
                        openTitle: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: kDefaultPadding * 5),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
