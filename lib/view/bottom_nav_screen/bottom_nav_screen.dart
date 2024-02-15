// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/view/commingsoon_screen/commingsoon.dart';
import 'package:netflix_clone/view/homescreen/homescreen.dart';

import 'package:netflix_clone/view/searchscreen/searchscreen.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});

  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  List<Widget> screens = [
    Homescreen(),
    Searchscreen(),
   Commingsoon(),
    Center(
      child: Text("screen2"),
    ),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (Value) {
          selectedIndex = Value;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: Colorconstsnts.mucustomwhite,
        unselectedItemColor: Colorconstsnts.mucustomgrey,
        backgroundColor: Colorconstsnts.mucustomblack,
        selectedLabelStyle: TextStyle(fontSize: 12),
        selectedFontSize: 8.2,
        unselectedFontSize: 8.2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library), label: "coming soon"),
          BottomNavigationBarItem(
              icon: Icon(Icons.download), label: "download"),
        ],
      ),
    );
  }
}
