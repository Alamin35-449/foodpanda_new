import 'package:flutter/material.dart';
import 'package:foodpanda/splashscreen/splash_screen.dart';



Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sillers app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MysaplashScreen(), //saplashScreen k add korar jonnno aita use kora hoi


    );
  }
  //kothai konta kora hoise kn hoise hoise shop note kora ase //proti ta line ar  maje /so chintar kiso nai .aste astei shop sike jabo

}

