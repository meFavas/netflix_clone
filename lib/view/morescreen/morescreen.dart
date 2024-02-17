// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflix_clone/global_widgets/usercards.dart';

import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/image_constants.dart';

class Morescreen extends StatelessWidget {
  const Morescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstsnts.mucustomblack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: Userdata.usercards.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Userdata.usercards[index]
                                      ["image"]
                                  .toString()),
                            ),
                          ),
                        ),
                        Text(
                          Userdata.usercards[index]["name"].toString(),
                          style: TextStyle(color: Colorconstsnts.mucustomwhite),
                        )
                      ],
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Imageconstants.pencil,
                  color: Colorconstsnts.mucustomwhite,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Manage Profiles",
                  style: TextStyle(
                      color: Colorconstsnts.mucustomwhite,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 275,
              width: double.infinity,
              color: Colorconstsnts.mucustomgrey,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/Group 71.png",
                          scale: .9,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Tell Friends about Netflix.",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colorconstsnts.mucustomwhite,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam mattis id libero at dictum. Aliquam consectetur leo sed augue pulvinar condimentum. Mauris quis elementum velit. Vivamus u ",
                      style: TextStyle(
                          color: Colorconstsnts.mucustomwhite,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.justify,
                      maxLines: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Text(
                      "Terms & Conditions",
                      style: TextStyle(
                          color: Colorconstsnts.mucustomwhite,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 45,
                        width: 275,
                        color: Colorconstsnts.mucustomblack,
                      ),
                      SizedBox(width: 5),
                      Container(
                        height: 45,
                        width: 90,
                        color: Colorconstsnts.mucustomwhite,
                        child: Center(
                          child: Text(
                            "Copy Link",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colorconstsnts.mucustomblack,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 80,
                    child: Row(
                      children: [
                        Expanded(
                            child: Image.asset(
                          "assets/images/logos_whatsapp.png",
                          scale: .6,
                        )),
                        VerticalDivider(),
                        Expanded(
                            child: Image.asset(
                          "assets/images/Group 92.png",
                          scale: .7,
                        )),
                        VerticalDivider(),
                        Expanded(
                          child: Image.asset(
                            "assets/images/Gmail-logo 1.png",
                            scale: .5,
                          ),
                        ),
                        VerticalDivider(),
                        Expanded(
                          child: Column(
                            children: [
                              Icon(
                                Icons.more_horiz_outlined,
                                color: Colorconstsnts.mucustomwhite,
                                size: 50,
                              ),
                              Text(
                                "More",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colorconstsnts.mucustomwhite),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Image.asset("assets/images/noto-v1_check-mark-button.png"),
                Text(
                  "My List",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colorconstsnts.mucustomwhite,
                      fontSize: 17),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("App settings",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colorconstsnts.mucustomwhite)),
                  Text(
                    "Account",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colorconstsnts.mucustomwhite),
                  ),
                  Text(
                    "Help",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colorconstsnts.mucustomwhite),
                  ),
                  Text(
                    "Sign out",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colorconstsnts.mucustomwhite),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
