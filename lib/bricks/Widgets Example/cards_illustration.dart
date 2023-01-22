import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IllustrationFb3 extends StatelessWidget {
  const IllustrationFb3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height, width;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Lottie.asset(
      'assets/json/bookanimation.json',
      height: height * 0.31,
      // width: width * 0.5,
      fit: BoxFit.fill,
    );
    //   Image.asset(
    //   "assets/images/undraw_File_bundle_re_6q1e 1.png",
    //   fit: BoxFit.cover,
    //   scale: 3.2,
    // );
  }
}
