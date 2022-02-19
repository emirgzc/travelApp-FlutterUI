// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:visitapp/models/nearby.dart';
import 'package:visitapp/pages/detail_page.dart';
import 'package:visitapp/themes/color.dart';
import 'package:visitapp/widgets/allCardPage/search_and_icon.dart';
import 'package:visitapp/widgets/allCardPage/staggered_card.dart';
import 'package:visitapp/widgets/bottom_nav_bar.dart';

class AllCard extends StatelessWidget {
  const AllCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: kDefaultPadding * 4),
            SearchAndIcon(size: size),
            SizedBox(height: kDefaultPadding * 1.2),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: 0,
                axisDirection: AxisDirection.down,
                mainAxisSpacing: 1,
                children: [
                  ...List.generate(
                    allNearby.length,
                    (index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              nearby: allNearby[index],
                            ),
                          ),
                        );
                      },
                      child: BuildCard(
                        height: index % 4 == 0
                            ? size.width * 0.58
                            : size.width * 0.35,
                        nearby: allNearby[index],
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
