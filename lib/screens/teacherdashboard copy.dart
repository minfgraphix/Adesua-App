import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smsapp1/bricks/Widgets%20Example/horizontal_card_with_image_&_trailing.dart';
import 'package:smsapp1/bricks/Widgets%20Example/password_inputfield.dart';
import 'package:smsapp1/screens/Student.dart';
import 'package:smsapp1/screens/chat.dart';
import 'package:smsapp1/screens/parent.dart';

import '../bricks/Widgets Example/cards_illustration.dart';
import '../bricks/Widgets Example/clean_grass_background.dart';
import '../bricks/Widgets Example/dropdown.dart';
import '../bricks/Widgets Example/email_text_field_floating_label.dart';
import '../bricks/Widgets Example/gradient_button_1.dart';
import '../bricks/Widgets Example/top_bar.dart';
import '../controllers/usercontroller.dart';

class TeacherDashboard extends StatefulWidget {
  const TeacherDashboard({Key? key}) : super(key: key);

  @override
  State<TeacherDashboard> createState() => _TeacherDashboardState();
}

class _TeacherDashboardState extends State<TeacherDashboard> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController cpasswordcontroller = TextEditingController();

  final String imageUrl = "assets/images/Printer.png";
  final String name = "Abandoh Sam";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                color: Color(0xff06203A),
              ),
              height: 180,
              // color: const Color(0xff06203A),
            ),
            Positioned(
              left: 103,
              top: 80,
              child: Text(
                "Dashboard",
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.headline1,
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                TopBar(name, nametext: name),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Announcement",
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline6,
                        fontSize: 25,
                        color: const Color(0xff06203A),
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                BannerCarousel(
                  banners: BannerImages.listBanners,
                  customizedIndicators: const IndicatorModel.animation(
                      width: 20,
                      height: 5,
                      spaceBetween: 2,
                      widthAnimation: 50),
                  height: 200,
                  activeColor: Colors.amberAccent,
                  disableColor: Colors.white,
                  animation: true,
                  borderRadius: 10,
                  spaceBetween: 4,
                  width: 500,
                  indicatorBottom: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Courses",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.headline3,
                    fontSize: 20,
                    color: const Color(0xff06203A),
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                AnimationLimiter(
                  child: Column(
                    children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(milliseconds: 400),
                      childAnimationBuilder: (widget) => SlideAnimation(
                        horizontalOffset: 70.0,
                        child: FadeInAnimation(
                          child: widget,
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: SizedBox(
                            height: 50,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              padding: const EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                color: const Color(0xff06203A),
                                borderRadius: BorderRadius.circular(12.5),
                                boxShadow: [
                                  BoxShadow(
                                      offset: const Offset(10, 20),
                                      blurRadius: 10,
                                      spreadRadius: 0,
                                      color: Colors.grey.withOpacity(.05)),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white, width: 1),
                                    ),
                                    child: CircleAvatar(
                                      radius: 28,
                                      backgroundColor: Colors.transparent,
                                      child: CircleAvatar(
                                        radius: 15,
                                        // backgroundColor:Colors.transparent,
                                        backgroundColor: Colors.white,
                                        child: Image.asset(
                                          imageUrl,
                                          height: 80,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Social Studies",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      textStyle:
                                          Theme.of(context).textTheme.headline3,
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "JHS 1",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      // Get.to(My_Parent());
                                      //parsing data to edit page
                                      // userController.deleteUser(id);
                                    },
                                    child: const Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Colors.red,
                                      size: 35,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: SizedBox(
                            height: 50,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              padding: const EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                color: const Color(0xff06203A),
                                borderRadius: BorderRadius.circular(12.5),
                                boxShadow: [
                                  BoxShadow(
                                      offset: const Offset(10, 20),
                                      blurRadius: 10,
                                      spreadRadius: 0,
                                      color: Colors.grey.withOpacity(.05)),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white, width: 1),
                                    ),
                                    child: CircleAvatar(
                                      radius: 28,
                                      backgroundColor: Colors.transparent,
                                      child: CircleAvatar(
                                        radius: 15,
                                        // backgroundColor:Colors.transparent,
                                        backgroundColor: Colors.white,
                                        child: Image.asset(
                                          imageUrl,
                                          height: 80,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Mathematics",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      textStyle:
                                          Theme.of(context).textTheme.headline3,
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    "JHS 1",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      // Get.to(StudentProfile());
                                      //parsing data to edit page
                                      // userController.deleteUser(id);
                                    },
                                    child: const Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Colors.red,
                                      size: 35,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
