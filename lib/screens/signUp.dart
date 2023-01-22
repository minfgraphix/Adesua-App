import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smsapp1/bricks/Widgets%20Example/password_inputfield.dart';

import '../bricks/Widgets Example/cards_illustration.dart';
import '../bricks/Widgets Example/clean_grass_background.dart';
import '../bricks/Widgets Example/email_text_field_floating_label.dart';
import '../bricks/Widgets Example/gradient_button_1.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController cpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImageFb1(
        imageUrl: "assets/images/backgroundlogin1.png",
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // const SizedBox(
                //   width: 50,
                // ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
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
                      height: 15,
                    ),
                  ],
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

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: NameInputFb2(inputController: namecontroller),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: EmailInputFb2(inputController: emailcontroller),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PasswordInputfield( passWord: passwordcontroller,),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CPasswordInputfield( passWord: cpasswordcontroller,),
                ),
                const SizedBox(
                  height: 15,
                ),
                GradientButtonFb1(
                    text: "Sign Up",
                    onPressed: () {

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
            ),
          ),
        ),
      ),
    );
  }
}
