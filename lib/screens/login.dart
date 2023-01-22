import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smsapp1/bricks/Widgets%20Example/password_inputfield.dart';
import 'package:smsapp1/controllers/usercontroller.dart';
import 'package:smsapp1/screens/Student.dart';
import 'package:smsapp1/screens/chat.dart';
import 'package:smsapp1/screens/parentdashboard.dart';
import 'package:smsapp1/screens/parent.dart';
import 'package:smsapp1/screens/studentdashboard.dart';

import '../bricks/Widgets Example/cards_illustration.dart';
import '../bricks/Widgets Example/dropdown.dart';
import '../bricks/Widgets Example/email_text_field_floating_label.dart';
import '../bricks/Widgets Example/gradient_button_1.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController cpasswordcontroller = TextEditingController();
  final AuthController _authController = AuthController();

  final List<String> status = [
    'Parent',
    'Teacher',
    'Student',
  ];
  String? statusValue;

  @override
  Widget build(BuildContext context) {
    double height, width;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: height * 0.46,
              width: width * 1,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                color: const Color(0xff06203A),
              ),
              // height: 342,
              // color: const Color(0xff06203A),
            ),
            Column(
              children: [
                SafeArea(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text(
                          "ADESUA APP.",
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.headline2,
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      const IllustrationFb3(),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline2,
                      fontSize: 40,
                      color: const Color(0xff06203A),
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: NameInputFb2(inputController: namecontroller),
                // ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: EmailInputFb2(inputController: emailcontroller),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PasswordInputfield(
                    passWord: passwordcontroller,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login as",
                        style: GoogleFonts.poppins(
                          textStyle: Theme.of(context).textTheme.headline2,
                          fontSize: 16,
                          color: const Color(0xff06203A),
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Dropdown(
                        hint: 'Select status',
                        dropdownItems: status,
                        value: statusValue,
                        onChanged: (value) {
                          setState(() {
                            statusValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GradientButtonFb1(
                    text: "Login",
                    onPressed: () {
                      if (statusValue == "Student") {
                        _authController.Loginauth(
                            emailcontroller.text.trim(),
                            passwordcontroller.text.trim(),
                            statusValue!.trim());
                      } else if (statusValue == null ||
                          statusValue == "Teacher") {
                        _authController.Loginauth(
                            emailcontroller.text.trim(),
                            passwordcontroller.text.trim(),
                            statusValue!.trim());
                      } else {
                        _authController.Loginauth(
                            emailcontroller.text.trim(),
                            passwordcontroller.text.trim(),
                            statusValue!.trim());
                      }
                      // if(imageFile != null && username.text != ""
                      //     && email.text != "" && password.text != "")
                      // {
                      //   _authcontroller.regUser(
                      //       email.text.trim(),
                      //       password.text.trim(),
                      //       username.text.trim(),
                      //       imageFile!
                      //   );
                      //
                      //   showDialog(
                      //       context: context,
                      //       barrierDismissible: false,
                      //       builder: (context) => const Center(
                      //         child:
                      //         DottedCircularProgressIndicatorFb(
                      //           size: 30,
                      //           numDots: 9,
                      //           dotSize: 3,
                      //           defaultDotColor: Colors.blue,
                      //           currentDotColor: Colors.orange,
                      //           secondsPerRotation: 1,
                      //         ),
                      //       ));
                      //
                      //   username.text = "";
                      //   email.text = "";
                      //   password.text = "";
                      //
                      // }
                      // else{
                      //   Get.snackbar("Form validation",
                      //       "Please fill all the field and try again",
                      //       colorText: Colors.white,backgroundColor: Colors.red);
                      // }
                      //
                      //
                      //
                      // // _authcontroller.regUser(email.text.trim(),
                      // //     password.text.trim(), username.text.trim());
                      // // email.clear();
                      // // password.clear();
                      // // username.clear();
                      // Get.to(const PrintView());
                      // _authcontroller.addUser(username.text.trim(), email.text.trim(), password.text.trim());
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
