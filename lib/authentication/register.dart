import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodpanda/widget/custom_text_field.dart';
import 'package:image_picker/image_picker.dart';

class register_screen extends StatefulWidget {
  const register_screen({Key? key}) : super(key: key);

  @override
  State<register_screen> createState() => _register_screenState();
}

class _register_screenState extends State<register_screen> {
  // final GlobalKey<FromState> _formKey = GlobalKey<FromState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController confirmPasswordcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController locationcontroller = TextEditingController();

  XFile? imageXfile;
  final ImagePicker _picker = ImagePicker();
  Future<void> _getImage() async
  {
    imageXfile=await _picker.pickImage(source: ImageSource.camera);
// kono image add korar jonno ai code use kora hoi ,,niche sodo ai container sathe porichoi koriye dilei hobe
    setState(() {
      imageXfile;
    });
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 17,
            ),
            InkWell(
              onTap: () {
                _getImage();// image add korar jonno use kora hoi
              },
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.20,
                backgroundColor: Colors.white,
                backgroundImage: imageXfile == null
                    ? null
                    : FileImage(File(imageXfile!.path)),
                child: imageXfile == null
                    ? Icon(
                        Icons.add_photo_alternate,
                        size: MediaQuery.of(context).size.width * 0.20,
                        color: Colors.grey,
                      )
                    : null,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Form(
              // key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    data: Icons.person,
                    controller: namecontroller,
                    hintText: "Name",
                    isObsecre: false,
                  ),
                  CustomTextField(
                    data: Icons.email,
                    controller: emailcontroller,
                    hintText: "Email",
                    isObsecre: false,
                  ),
                  CustomTextField(
                    data: Icons.lock,
                    controller: passwordcontroller,
                    hintText: "Password",
                    isObsecre: true,
                  ),
                  CustomTextField(
                    data: Icons.lock_open,
                    controller: confirmPasswordcontroller,
                    hintText: "Confirm_Password",
                    isObsecre: true,
                  ),
                  CustomTextField(
                    data: Icons.phone,
                    controller: phonecontroller,
                    hintText: "Phone Number",
                    isObsecre: false,
                  ),
                  CustomTextField(
                    data: Icons.place_rounded,
                    controller: locationcontroller,
                    hintText: " Location/Cafe",
                    isObsecre: false,
                    enbled: false,
                  ),
                  Container(
                    width: 400,
                    height: 40,
                    alignment: Alignment.center,
                    child: ElevatedButton.icon(
                      label: const Text(
                        "Get My Current Location",
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: const Icon(
                        Icons.location_on,
                        color: Colors.amber,
                      ),
                      onPressed: () => print("clicked"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: Text(
                "Sign Up",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              ),
              onPressed: () => print("clicked"),
            ),
          ],
        ),
      ),
    );
    // return Column(
    //   children: [
    //     CustomTextField(
    //       controller: anycontroller,
    //       data: Icons.phone,
    //       hintText: "Phone",
    //       isObsecre: false,
    //       // aite dile container ar bitore ja ja lekhbo ta kiso dekha jabe na
    //       enbled:
    //           true, //aita container ar bitore kiso lekha hoitase kina ta dekha jabe na
    //     ),
    //     CustomTextField(
    //       controller: anycontroller,
    //       data: Icons.lock,
    //       hintText: "Lock",
    //       isObsecre: false,
    //       // aite dile container ar bitore ja ja lekhbo ta kiso dekha jabe na
    //       enbled:
    //           true, //aita container ar bitore kiso lekha hoitase kina ta dekha jabe na
    //     ),
    //   ],
    // );
  }
}
