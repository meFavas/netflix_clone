// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class Commingsooncard extends StatelessWidget {
  final List newArrivals;
  final int indexvalue;
  const Commingsooncard(
      {super.key, required this.newArrivals, required this.indexvalue});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: Colorconstsnts.mucustomgrey,
      child: Row(
        children: [
          Container(
            height: 76,
            width: 146,
            child: Image.network(
              newArrivals[indexvalue]["imageUrl"],
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                newArrivals[indexvalue]["moviename"],
                style: TextStyle(
                    color: Colorconstsnts.mucustomwhite, fontSize: 18),
              ),
              Text(
                newArrivals[indexvalue]["title"],
                style: TextStyle(
                    color: Colorconstsnts.mucustomwhite, fontSize: 15),
              ),
              Text(
                newArrivals[indexvalue]["date"],
                style: TextStyle(
                    color: Colorconstsnts.mucustomwhite.withOpacity(.6),
                    fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
