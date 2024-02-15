import 'package:netflix_clone/utils/image_constants.dart';

class Dbdata {
  static List<Map<String, String>> userNameimages = [
    {
      "image": Imageconstants.userone,
      "name": "user one",
    },
    {
      "image": Imageconstants.usertwo,
      "name": "user two",
    },
    {
      "image": Imageconstants.userthree,
      "name": "user three",
    },
    {
      "image": Imageconstants.kidslogo,
      "name": "kids",
    },
  ];
  static List<String> movieimageurls = [
    "https://images.pexels.com/photos/13003774/pexels-photo-13003774.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/12838778/pexels-photo-12838778.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/13130410/pexels-photo-13130410.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/13140538/pexels-photo-13140538.jpeg?auto=compress&cs=tinysrgb&w=600",
  ];
  static List<Map<String, dynamic>> moviesdata = [
    {
      "imageUrl":
          "https://images.pexels.com/photos/13140538/pexels-photo-13140538.jpeg?auto=compress&cs=tinysrgb&w=600",
      "moviename": "the social network",
      "title": "EL Chapo",
      "date": "Jan 16",
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/12838778/pexels-photo-12838778.jpeg?auto=compress&cs=tinysrgb&w=600",
      "moviename": "Inception",
      "title": "Inception",
      "date": "Feb 14",
    },
  ];
}
