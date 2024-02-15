// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class CustomMoviecard extends StatelessWidget {
  const CustomMoviecard({
    super.key,
    required this.title,
    this.height = 200,
    this.width = 100,
    this.iscircular = false,
    required this.imageslist,
    this.isoptionvisible = false,
  });
  final String title;
  final double height;
  final double width;
  final bool iscircular;
  final bool isoptionvisible;
  final List<String> imageslist;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colorconstsnts.mucustomwhite,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: height,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageslist.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: iscircular == true
                          ? BoxShape.circle
                          : BoxShape.rectangle,
                      color: Colors.red,
                      image: DecorationImage(
                          image: NetworkImage(
                            imageslist[index],
                          ),
                          fit: BoxFit.cover),
                    ),
                    height: height,
                    width: width,
                    alignment: Alignment.bottomCenter,
                    child: Visibility(
                      visible: isoptionvisible,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 5,
                            width: width,
                            color: Colorconstsnts.mucustomgrey,
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 40,
                              height: 5,
                              color: Colorconstsnts.mucustomred,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            color: Colorconstsnts.mucustomblack,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  color: Colorconstsnts.mucustomwhite,
                                ),
                                Icon(
                                  Icons.more_vert,
                                  color: Colorconstsnts.mucustomwhite,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
