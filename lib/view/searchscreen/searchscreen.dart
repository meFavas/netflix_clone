// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstsnts.mucustomblack,
      appBar: AppBar(
        backgroundColor: Colorconstsnts.mucustomgrey,
        leading: Icon(
          Icons.search,
        ),
        title: Text("Search"),
        actions: [Icon(Icons.mic)],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.cyan,
                ),
                Text("sdfghjk"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.play_circle_outline),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
