import 'package:flutter/material.dart';
import 'package:gym/Rohit/home3.dart';
import 'package:gym/home.dart';
import 'package:dottedcarasoulslider/dottedcarasoulslider.dart';
import 'package:gym/web/View/home1.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}
