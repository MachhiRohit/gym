import 'package:flutter/material.dart';
import 'package:gym/Mobile/home.dart';
import 'package:gym/web/View/home1.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return home2();
        } else {
          return home1();
        }
      },
    );
  }
}