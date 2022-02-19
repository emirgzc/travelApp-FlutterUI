// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:visitapp/themes/color.dart';
import 'package:visitapp/widgets/bottom_nav_bar.dart';
import 'package:visitapp/widgets/profilePage/image_and_title.dart';
import 'package:visitapp/widgets/profilePage/profile_card.dart';
import 'package:visitapp/widgets/profilePage/top_title.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(height: kDefaultPadding * 5),
            TopTitle(),
            SizedBox(height: kDefaultPadding),
            ImageAndTitle(),
            SizedBox(height: kDefaultPadding * 2.5),
            ProfileCard(size: size, text: "Edit Profile"),
            ProfileCard(size: size, text: "My Location"),
            ProfileCard(size: size, text: "My Voucher"),
            ProfileCard(size: size, text: "History"),
            ProfileCard(size: size, text: "Dark Theme"),
            ProfileCard(size: size, text: "Logout"),
            SizedBox(height: kDefaultPadding * 5),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
