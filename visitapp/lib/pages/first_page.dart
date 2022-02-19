// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visitapp/themes/color.dart';
import 'package:visitapp/pages/home_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/b.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: size.height / 2.7,
            left: kDefaultPadding * 1.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Find your \nbest vacation \nspot",
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.w700,
                    color: whiteColor,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: kDefaultPadding * 2.5),
                Container(
                  height: kDefaultPadding * 2,
                  width: kDefaultPadding * 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: firstColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        },
                        child: Text(
                          "Find Now",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: whiteColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
