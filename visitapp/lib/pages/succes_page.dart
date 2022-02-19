// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:visitapp/themes/color.dart';
import 'package:visitapp/themes/desc.dart';

class SuccesPage extends StatelessWidget {
  const SuccesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: firstColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(height: 75),
                SizedBox(
                  width: size.width * 0.75,
                  child: Text(
                    succesDesc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15,
                        color: blackColor.withOpacity(0.18),
                        offset: Offset(5, 5),
                      ),
                    ],
                    border: Border.all(
                      width: 1,
                      color: blackColor.withOpacity(0.1),
                    ),
                  ),
                  child: Icon(
                    Icons.check,
                    size: 150,
                    color: firstColor,
                  ),
                ),
                SizedBox(height: 50),
                Text(
                  "Order Successful",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: firstColor,
                    letterSpacing: 1.25,
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  height: 50,
                  width: size.width * 0.55,
                  decoration: BoxDecoration(
                    color: firstColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "View Ticket",
                      style: TextStyle(
                        fontSize: 18,
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
