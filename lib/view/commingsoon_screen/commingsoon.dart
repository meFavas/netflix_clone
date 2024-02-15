// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/database.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/commingsoon_screen/commingsoon_customcard.dart';
import 'package:netflix_clone/view/commingsoon_screen/notificationscreencard.dart';

class Commingsoon extends StatefulWidget {
  const Commingsoon({super.key});

  @override
  State<Commingsoon> createState() => _CommingsoonState();
}

class _CommingsoonState extends State<Commingsoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstsnts.mucustomblack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Image.asset(
            Imageconstants.bellicon,
            scale: .7,
          ),
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colorconstsnts.mucustomwhite),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colorconstsnts.mucustomgrey,
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Dbdata.moviesdata.length,
                itemBuilder: (context, index) => Commingsooncard(
                  newArrivals: Dbdata.moviesdata,
                  indexvalue: index,
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
              ),
            ),
            ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 20),
              itemCount: Dbdata.notificationMovieList.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => Notificationscreencard(
                imageurl: Dbdata.notificationMovieList[index]["imageUrl"],
                title:  Dbdata.notificationMovieList[index]["title"],
                des: Dbdata.notificationMovieList[index]["description"], 
                subtitle:  Dbdata.notificationMovieList[index][ "subtitle"],
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 20,
              ),
            )
          ],
        ),
      )),
    );
  }
}
