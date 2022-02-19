// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:visitapp/models/nearby.dart';
import 'package:visitapp/themes/color.dart';

class ListMyFavorite extends StatelessWidget {
  const ListMyFavorite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        ...List.generate(allNearby.length, (index) {
          return ListTile(
            leading: Container(
              height: size.width * 0.15,
              width: size.width * 0.15,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: blackColor.withOpacity(0.15),
                    offset: Offset(5, 5),
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(
                    allNearby[index].imageURL[0],
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(kDefaultPadding / 2),
              ),
            ),
            title: Text(
              allNearby[index].title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              allNearby[index].shortDesc,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: greyColor,
              ),
            ),
            trailing: Container(
              height: kDefaultPadding * 3,
              width: kDefaultPadding * 3,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(kDefaultPadding / 2),
                border: Border.all(
                  width: 1,
                  color: blackColor.withOpacity(0.2),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: blackColor.withOpacity(0.15),
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: a
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.check,
                    color: firstColor,
                  ),
                  Text(
                    "Done",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }
}
