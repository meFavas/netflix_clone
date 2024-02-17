// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class Downloadscreen extends StatelessWidget {
  const Downloadscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstsnts.mucustomblack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "smart Downloads",
                  style: TextStyle(
                      color: Colorconstsnts.mucustomwhite,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "introducing Downloads For You",
                style: TextStyle(
                    color: Colorconstsnts.mucustomwhite,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sagittis consequat sem, a pellentesque ipsum finibus consequat. Aliquam egestas bibendum blandit. Nullam eget neque lacus. Nunc ullamcorper facilisis tellus eget imperdiet. Praesent cursus malesuada varius",
                textAlign: TextAlign.justify,
                maxLines: 3,
                style: TextStyle(
                    color: Colorconstsnts.mucustomwhite,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/11739200/pexels-photo-11739200.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"),
                  radius: 90,
                  backgroundColor: Colorconstsnts.mucustomgrey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 60,
                  width: 350,
                  color: Colorconstsnts.mucustomblue,
                  child: Center(
                    child: Text(
                      "SETUP",
                      style: TextStyle(
                          color: Colorconstsnts.mucustomwhite, fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 55,
                  width: 300,
                  color: Colorconstsnts.mucustomgrey,
                  child: Center(
                      child: Text(
                    "Find Something To Download",
                    style: TextStyle(
                        color: Colorconstsnts.mucustomwhite,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
