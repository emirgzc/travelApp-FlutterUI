// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:visitapp/models/nearby.dart';
import 'package:visitapp/themes/color.dart';
import 'package:visitapp/widgets/detailPage/desc-and_map_icon.dart';
import 'package:visitapp/widgets/detailPage/desc_title.dart';
import 'package:visitapp/widgets/detailPage/detail_top_title.dart';
import 'package:visitapp/widgets/detailPage/image_top.dart';
import 'package:visitapp/widgets/detailPage/info_card.dart';
import 'package:visitapp/widgets/detailPage/last_button.dart';

class DetailPage extends StatelessWidget {
  final Nearby nearby;

  const DetailPage({
    Key? key,
    required this.nearby,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageTop(nearby: nearby),
            SizedBox(height: kDefaultPadding / 2),
            DetailTopTitle(nearby: nearby),
            SizedBox(height: kDefaultPadding / 2),
            InfoCard(nearby: nearby),
            SizedBox(height: kDefaultPadding),
            DescTitle(),
            DescAndMapIcon(),
            SizedBox(height: kDefaultPadding),
            LastButton(size: size),
            SizedBox(height: kDefaultPadding),
          ],
        ),
      ),
    );
  }
}
