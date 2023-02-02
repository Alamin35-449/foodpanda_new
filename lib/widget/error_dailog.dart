import 'package:flutter/material.dart';


//error box aita bananor jonno coding safe ar video 11 number ta

class Error_dailog extends StatelessWidget {
  final String? message;

  Error_dailog({this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Text(message!),
      actions: [
        ElevatedButton(
            child:  Center(
              child:const Text("Ok"),
            ),
          style: ElevatedButton.styleFrom(
            primary: Colors.red
          ),
          onPressed: ()
            {
              Navigator.pop(context);
            }
        ),
      ],
    );
  }
}
