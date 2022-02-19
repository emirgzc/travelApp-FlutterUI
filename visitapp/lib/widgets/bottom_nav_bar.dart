// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:visitapp/pages/all_card.dart';
import 'package:visitapp/pages/favorite_page.dart';
import 'package:visitapp/pages/home_page.dart';
import 'package:visitapp/pages/profile_page.dart';
import 'package:visitapp/themes/color.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(kDefaultPadding * 1.5),
          topLeft: Radius.circular(kDefaultPadding * 1.5),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: kDefaultPadding / 2,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(kDefaultPadding),
          child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedItemColor: firstColor,
            unselectedItemColor: greyColor.withOpacity(0.9),
            showUnselectedLabels: true,
            // ignore: prefer_const_literals_to_create_immutables
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: GestureDetector(
                  child: Icon(Icons.home),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  ),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AllCard(),
                    ),
                  ),
                  child: Icon(Icons.search),
                ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FavoritePage(),
                    ),
                  ),
                  child: Icon(Icons.favorite),
                ),
                label: "Messages",
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ),
                  ),
                  child: Icon(
                    Icons.people,
                  ),
                ),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
