// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class Searchscreencustomcard extends StatelessWidget {
  
  const Searchscreencustomcard({super.key, required this.imageurl, required this.moviename});
  final String imageurl;
  final String moviename;

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 90,
              width: double.infinity,
              color: Colorconstsnts.mucustomgrey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 86,
                        width: 155,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                imageurl
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        moviename,
                        style: TextStyle(
                            color: Colorconstsnts.mucustomwhite,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.play_circle_outline_outlined,
                      color: Colorconstsnts.mucustomwhite,
                    ),
                  )
                ],
              ),
            );
  }
}