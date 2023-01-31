import 'package:flutter/material.dart';
import 'package:foodpanda/widget/custom_text_field.dart';

class login_screen extends StatefulWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Image.asset(
                "images/seller.png",
                height: 250,
              ),
            ),
          ),
          Form(
            child: Column(
              children: [
                CustomTextField(
                  data: Icons.email_outlined,
                  controller: emailcontroller,
                  hintText: "Email",
                  isObsecre: false,
                ),
                CustomTextField(
                  data: Icons.lock_open,
                  controller: passwordcontroller,
                  hintText: "PassWord",
                  isObsecre: false,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: Text(
              "Log in",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.purple,
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
            ),
            onPressed: () => print("clicked"),
          ),
        ],
      ),
    );
  }
}
