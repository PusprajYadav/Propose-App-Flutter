import 'package:flutter/material.dart';
import 'package:propose_app/Page2.dart';
import 'package:propose_app/Page3.dart';
import 'package:propose_app/Page1.dart';
import 'package:propose_app/Page4.dart';
import 'package:propose_app/boxanimation.dart';
import 'package:propose_app/contactme.dart';
import 'package:propose_app/splash.dart';

void main() {
  runApp(MaterialApp(initialRoute: "splash", routes: {
    "splash": (context) => const splash(),
    "page1": (context) => const Page1Screen(),
    "page2": (context) => const Page2Screen(),
    "page3": (context) => const Page3Screen(),
    "contact": (context) => const ContactPage(),
    "page4": (context) => const Page4(),
    "BoxAnimation": (context) => const BoxAnimation(),
  }));
}
