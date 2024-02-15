// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/database.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/homescreen/widgets/custom_moviecard.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstsnts.mucustomblack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 430,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Imageconstants.poster),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 35, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(Imageconstants.nlogo),
                      Text(
                        "TV shows",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "movies",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "My List",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                // 2nd
                Positioned(
                  bottom: 0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 110),
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset(Imageconstants.top10),
                          ),
                        ),
                      ),
                      SizedBox(width: 7),
                      Text(
                        "#2 in Nigeria Today",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),

            //  3rd
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // 1st elmnt
                Column(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "My List",
                      style: TextStyle(color: Colorconstsnts.mucustomwhite),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                // 2nd elmnt
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colorconstsnts.mucustomgrey,
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    children: [
                      Icon(Icons.play_arrow),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "play",
                        style: TextStyle(color: Colorconstsnts.mucustomblack),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                // 3rd elmnt
                // 1st elmnt
                Column(
                  children: [
                    Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "info",
                      style: TextStyle(color: Colorconstsnts.mucustomwhite),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomMoviecard(
              height: 150,
              width: 150,
              title: "previews",
              iscircular: true,
              imageslist: Dbdata.movieimageurls,
            ),
            CustomMoviecard(
              title: "continue watching us",
              imageslist: Dbdata.movieimageurls,
              isoptionvisible: true,
            ),
            CustomMoviecard(
              height: 251,
              width: 154,
              title: "continue watching us",
              imageslist: Dbdata.movieimageurls,
            ),
            CustomMoviecard(
              title: "continue watching us",
              imageslist: Dbdata.movieimageurls,
            ),
          ],
        ),
      ),
    );
  }
}
