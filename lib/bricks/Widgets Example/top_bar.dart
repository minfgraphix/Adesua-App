import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  final String text;

  const TopBar(this.text, {Key? key, required String nametext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.transparent,
                  child: CircleAvatar(
                    radius: 25,
                    // backgroundColor:Colors.transparent,
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35.0),
                      child: Image.asset('assets/images/defaultold.png'),
                      //   image: AssetImage("assets/images/defaultold.png"),
                      // fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 10, 0, 20),
                child: Text(
                  text,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ],
          ),

          // const Text(
          //
          //   "Easy access\nto all your prints",
          //   style: TextStyle(
          //       color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          // ),
          // Container(
          //   decoration: BoxDecoration(boxShadow: [
          //     BoxShadow(
          //         offset: const Offset(12, 26),
          //         blurRadius: 50,
          //         spreadRadius: 0,
          //         color: Colors.grey.withOpacity(.25)),
          //   ]),
          //   child: const CircleAvatar(
          //     radius: 35,
          //     backgroundColor: Colors.deepPurple,
          //     child: Icon(
          //       Icons.book_outlined,
          //       size: 40,
          //       color: Colors.white,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
