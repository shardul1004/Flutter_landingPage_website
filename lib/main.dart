import 'package:flutter/material.dart';
import 'package:sheenai/Screensize.dart';
import 'package:sheenai/mainPage.dart';
import 'package:sheenai/mobilescr.dart';
import 'package:sheenai/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenSize.width = MediaQuery.of(context).size.width;
    ScreenSize.height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sheen AI',
      
      home: const responsiveLayout(webScreenLayout: mainPage(), mobileScreenLayout: mobileLayout()),
    );
  }
}

