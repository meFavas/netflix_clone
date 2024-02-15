// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/database.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/bottom_nav_screen/bottom_nav_screen.dart';

class Usernamescreen extends StatelessWidget {
  const Usernamescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstsnts.mucustomblack,
      appBar: AppBar(
        title: SizedBox(
            width: 200,
            height: 80,
            child: Image.asset(Imageconstants.netflixlogo)),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: [
          SizedBox(
            height: 24,
            width: 24,
            child: Image.asset(
              Imageconstants.pencil,
              scale: .5,
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: Dbdata.userNameimages.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => index <
                    Dbdata.userNameimages.length
                ? InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Bottomnavscreen(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colorconstsnts.mucustomyellow,
                            image: DecorationImage(
                                image: AssetImage(
                                    Dbdata.userNameimages[index]["image"]!),
                                fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          Dbdata.userNameimages[index]["name"]!,
                          style: TextStyle(color: Colorconstsnts.mucustomwhite),
                        )
                      ],
                    ),
                  )
                : Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Icon(
                          Icons.add,
                          size: 50,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Add",
                        style: TextStyle(color: Colorconstsnts.mucustomwhite),
                      )
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
