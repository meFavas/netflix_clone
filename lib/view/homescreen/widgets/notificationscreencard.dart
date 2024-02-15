// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class Notificationscreencard extends StatelessWidget {
  const Notificationscreencard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 193,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/17216968/pexels-photo-17216968/free-photo-of-sitting-in-chair-man-admiring-idyllic-landscape.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colorconstsnts.mucustomwhite,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Reminder",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colorconstsnts.mucustomwhite),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      size: 30,
                      color: Colorconstsnts.mucustomwhite,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colorconstsnts.mucustomwhite),
                    ),
                  ],
                )
              ],
            ),
          ),
          Text(
            "Season 1 Coming Soon",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 11,
              color: Colorconstsnts.mucustomwhite,
            ),
          ),
          Text(
            "lost in the jungle",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colorconstsnts.mucustomwhite,
            ),
          ),
          Text(
            "",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 11,
              color: Colorconstsnts.mucustomwhite,
            ),
          ),
        ],
      ),
    );
  }
}
