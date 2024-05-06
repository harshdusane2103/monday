import 'package:flutter/material.dart';
import 'package:monday/HOME/details.dart';
import 'package:monday/HOME/homescreen.dart';
import 'package:monday/HOME/login.dart';
import 'package:monday/HOME/singup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>LoginScreen(),
        '/sing':(context)=>singscreen(),
      },
    );
  }
}
