// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class Notificationscreencard extends StatelessWidget {
  const Notificationscreencard(
      {super.key,
      required this.imageurl,
      required this.title,
      required this.subtitle,
      required this.des});
  final String imageurl;
  final String title;
  final String subtitle;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageurl), fit: BoxFit.cover)),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 11,
                    color: Colorconstsnts.mucustomwhite,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colorconstsnts.mucustomwhite,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  des,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 11,
                    color: Colorconstsnts.mucustomwhite,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Steamy   Soapy   Slowburn   Suspensful   Teen   Mystery",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colorconstsnts.mucustomwhite,
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
