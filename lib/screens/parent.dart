import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bricks/Widgets Example/clean_grass_background.dart';
import '../bricks/Widgets Example/gradient_button_1.dart';
import 'chat.dart';

class My_Parent extends StatefulWidget {
  const My_Parent({Key? key}) : super(key: key);

  @override
  State<My_Parent> createState() => _My_ParentState();
}

class _My_ParentState extends State<My_Parent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImageFb1(
        imageUrl: "assets/images/background12.png",
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                AppBar(
                  leading: Container(
                    width: 50,
                    alignment: Alignment.centerLeft,
                    child: Positioned(
                      left: 0,
                      top: 0,
                      bottom: 0,
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                  title: Text(
                    "Parent Profile",
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  centerTitle: true,
                  elevation: 0.0,
                ),
                const SizedBox(
                  height: 40,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35.0),
                    child: Image.asset('assets/images/defaultold.png'),
                    //   image: AssetImage("assets/images/defaultold.png"),
                    // fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(const ChatPage());
                      },
                      child: const Icon(
                        Icons.message_outlined,
                        size: 28,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Send Message",
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline2,
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 110,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      "Abandoh Sam",
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Email",
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      "abandoh@gmail.com",
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Date of Birth",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      "1990-11-12",
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Occupation",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      "Teacher",
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Phone Number",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      "0247944809",
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Ward",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      "Eric Asabere",
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // GradientButtonFb1(
                    //     text: "Sign Up",
                    //     onPressed: () {
                    //
                    //     }),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
