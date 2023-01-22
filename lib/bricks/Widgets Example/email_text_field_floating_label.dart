import 'package:flutter/material.dart';

class EmailInputFb2 extends StatelessWidget {
  final TextEditingController inputController;
  const EmailInputFb2({Key? key, required this.inputController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff06203A);
    const secondaryColor = Color(0xff082645);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color(0xffffffff);
    const errorColor = Color(0xffEF4444);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8,
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: const Offset(12, 26),
                blurRadius: 50,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.1)),
          ]),
          child: TextField(
            controller: inputController,
            onChanged: (value) {
              //Do something wi
            },
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(fontSize: 14, color: Colors.black),
            decoration: InputDecoration(
              label: const Text("Email"),
              labelStyle: const TextStyle(color: primaryColor),
              // prefixIcon: Icon(Icons.email),
              filled: true,
              fillColor: accentColor,
              hintText: 'abandohsam@gmail.com',
              hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: secondaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class NameInputFb2 extends StatelessWidget {
  final TextEditingController inputController;
  const NameInputFb2({Key? key, required this.inputController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff06203A);
    const secondaryColor = Color(0xff082645);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color(0xffffffff);
    const errorColor = Color(0xffEF4444);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   "Contact",
        //   style: TextStyle(
        //       fontSize: 14,
        //       fontWeight: FontWeight.normal,
        //       color: Colors.white.withOpacity(.9)),
        // ),
        // const SizedBox(
        //   height: 8,
        // ),
        Container(
          height: 50,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: const Offset(12, 26),
                blurRadius: 50,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.1)),
          ]),
          child: TextField(
            controller: inputController,
            onChanged: (value) {
              //Do something wi
            },
            keyboardType: TextInputType.text,
            style: const TextStyle(fontSize: 14, color: Colors.black),
            decoration: InputDecoration(
              label: const Text("Name"),
              labelStyle: const TextStyle(color: primaryColor),
              // prefixIcon: Icon(Icons.email),
              filled: true,
              fillColor: accentColor,
              hintText: 'Abandoh Sam',
              hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: secondaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class passwordInputFb2 extends StatelessWidget {
  final TextEditingController inputController;
  const passwordInputFb2({Key? key, required this.inputController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff06203A);
    const secondaryColor = Color(0xff082645);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color(0xffffffff);
    const errorColor = Color(0xffEF4444);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   "Contact",
        //   style: TextStyle(
        //       fontSize: 14,
        //       fontWeight: FontWeight.normal,
        //       color: Colors.white.withOpacity(.9)),
        // ),
        // const SizedBox(
        //   height: 8,
        // ),
        Container(
          height: 50,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: const Offset(12, 26),
                blurRadius: 50,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.1)),
          ]),
          child: TextField(
            controller: inputController,
            onChanged: (value) {
              //Do something wi
            },
            keyboardType: TextInputType.visiblePassword,
            style: const TextStyle(fontSize: 14, color: Colors.black),
            decoration: InputDecoration(
              label: const Text("Password"),
              labelStyle: const TextStyle(color: primaryColor),
              // prefixIcon: Icon(Icons.email),
              filled: true,
              fillColor: accentColor,
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
              contentPadding:
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: secondaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CpasswordInputFb2 extends StatelessWidget {
  final TextEditingController inputController;
  const CpasswordInputFb2({Key? key, required this.inputController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff06203A);
    const secondaryColor = Color(0xff082645);
    const accentColor = Color(0xffffffff);
    const backgroundColor = Color(0xffffffff);
    const errorColor = Color(0xffEF4444);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: const Offset(12, 26),
                blurRadius: 50,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.1)),
          ]),
          child: TextField(
            controller: inputController,
            onChanged: (value) {
              //Do something wi
            },
            keyboardType: TextInputType.visiblePassword,
            style: const TextStyle(fontSize: 14, color: Colors.black),
            decoration: InputDecoration(
              label: const Text("Description"),
              labelStyle: const TextStyle(color: primaryColor),
              // prefixIcon: Icon(Icons.email),
              filled: true,
              fillColor: accentColor,
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: secondaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
