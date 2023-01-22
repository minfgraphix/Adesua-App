import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smsapp1/screens/parentdashboard.dart';
import 'package:smsapp1/screens/teacherdashboard%20copy.dart';

import '../screens/chat.dart';
import '../screens/studentdashboard.dart';

class AuthController extends GetxController {
  void Loginauth(String email, String Password, String status) {
    if (email == "" && Password == "") {
      Get.snackbar(
        "Login Status",
        "Credentials does not match",
        icon: Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        borderRadius: 20,
        margin: EdgeInsets.all(15),
        colorText: Colors.white,
        duration: Duration(seconds: 4),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    }

//parent Login

    else if (status == "Parent" &&
        email == "parent@gmail.com" &&
        Password == "1234567") {
      Get.to(const ParentDashboard());
      Get.snackbar(
        "Login Status",
        "Login successful",
        icon: Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Color.fromARGB(255, 36, 223, 163),
        borderRadius: 20,
        margin: EdgeInsets.all(15),
        colorText: Colors.white,
        duration: Duration(seconds: 4),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    }
    //Student Login

    else if (status == "Student" &&
        email == "student@gmail.com" &&
        Password == "1234567") {
      Get.to(const StudentDashboard());
      Get.snackbar(
        "Login Status",
        "Login successful",
        icon: Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Color.fromARGB(255, 36, 223, 163),
        borderRadius: 20,
        margin: EdgeInsets.all(15),
        colorText: Colors.white,
        duration: Duration(seconds: 4),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    }

    //Teacher Login

    else if (status == "Teacher" &&
        email == "teacher@gmail.com" &&
        Password == "1234567") {
      Get.to(const TeacherDashboard());
      Get.snackbar(
        "Login Status",
        "Login successful",
        icon: Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Color.fromARGB(255, 36, 223, 163),
        borderRadius: 20,
        margin: EdgeInsets.all(15),
        colorText: Colors.white,
        duration: Duration(seconds: 4),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    } else {
      Get.snackbar(
        "Login Status",
        "User does not exist",
        icon: Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Color.fromARGB(255, 227, 223, 25),
        borderRadius: 20,
        margin: EdgeInsets.all(15),
        colorText: Colors.white,
        duration: Duration(seconds: 4),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    }
  }
}

class BannerImages {
  static const String banner1 =
      "https://img.freepik.com/premium-psd/kids-school-education-admission-facebook-cover-web-banner-template_179771-221.jpg?w=2000";
  static const String banner2 =
      "https://img.freepik.com/free-psd/back-school-facebook-cover-banner-template_106176-1197.jpg?w=2000";
  static const String banner3 = "https://wallpaperaccess.com/full/19921.jpg";
  static const String banner4 =
      "https://images.pexels.com/photos/2635817/pexels-photo-2635817.jpeg?auto=compress&crop=focalpoint&cs=tinysrgb&fit=crop&fp-y=0.6&h=500&sharp=20&w=1400";

  static List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];
}
