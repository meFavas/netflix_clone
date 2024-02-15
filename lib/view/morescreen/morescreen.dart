// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/database.dart';
import 'package:netflix_clone/utils/image_constants.dart';

class Morescreen extends StatelessWidget {
  const Morescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstsnts.mucustomblack,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            width: double.infinity,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: Dbdata.userNameimages.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              Dbdata.userNameimages[index]["image"].toString()),
                        ),
                      ),
                    ),
                    Text(
                      Dbdata.userNameimages[index]["name"].toString(),
                      style: TextStyle(color: Colorconstsnts.mucustomwhite),
                    )
                  ],
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
            ),
          ),
          
        ],
      )),
    );
  }
}
