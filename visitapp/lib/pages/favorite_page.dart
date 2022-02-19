// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visitapp/themes/color.dart';
import 'package:visitapp/widgets/bottom_nav_bar.dart';
import 'package:visitapp/widgets/favoritePage/list_my_favorite.dart';
import 'package:visitapp/widgets/favoritePage/top_title.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(height: kDefaultPadding * 4.5),
            TopTitle(),
            SizedBox(height: kDefaultPadding * 0.75),
            ListMyFavorite(),
            SizedBox(height: kDefaultPadding * 2.5),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
