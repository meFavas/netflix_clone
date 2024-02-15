// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class Notificationscreencard extends StatelessWidget {
  const Notificationscreencard({super.key});

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Season 1 Coming Soon",
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
                  "lost in the jungle",
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
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In convallis odio at metus malesuada, a accumsan arcu blandit. Proin gravida blandit nunc, at tristique mauris consequat id. Pellentesque tincidunt a leo in faucibus. Praesent sed mattis libero, in molestie nulla. Sed ornare tellus non vehicula suscipit. Praesent lobortis pretium elit, sed ultricies magna tristique nec. Fusce vitae arcu eleifend, lacinia leo at, auctor nulla.",
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
