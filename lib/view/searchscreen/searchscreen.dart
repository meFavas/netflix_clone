// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/database.dart';
import 'package:netflix_clone/view/searchscreen/searchscreencustom.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstsnts.mucustomblack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colorconstsnts.mucustomgrey,
                  ),
                  suffixIcon: Icon(
                    Icons.mic,
                    color: Colorconstsnts.mucustomgrey,
                  ),
                  border: OutlineInputBorder(),
                  hintText: "search for a show ,movie,genre,e.t.c",
                  hintStyle: TextStyle(color: Colorconstsnts.mucustomwhite)),
            ),
            Text(
              "Top Searches",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colorconstsnts.mucustomwhite),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: Dbdata.searchcard.length,
                itemBuilder: (context, index) => Searchscreencustomcard(
                  moviename: Dbdata.searchcard[index]["moviename"].toString(),
                  imageurl: Dbdata.searchcard[index]["imageurl"].toString(),
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
