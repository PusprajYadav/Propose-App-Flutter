// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 7), () {
      Navigator.pushReplacementNamed(context, "page1");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          height: screenheight * 1,
          width: screenwidth * 1,
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: screenheight * 0.1,
                        left: screenwidth * 0.03,
                        right: screenwidth * 0.3,
                        bottom: screenheight * 0.01),
                    height: screenheight * 0.25,
                    width: screenwidth * 0.4,
                    child: Image.asset(
                      "assets/images/Anu.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: screenwidth * 0.25),
                    child: const Text(
                      "Anushka Virat ❤️",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: screenheight * 0.08),
                  height: screenheight * 0.15,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Hey Miss Anushka ❤️ ',
                        textStyle: const TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 208, 44, 176),
                        ),
                        speed: const Duration(milliseconds: 100),
                      ),
                      TypewriterAnimatedText(
                        'This app is for you ❤️',
                        textStyle: const TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 208, 44, 176),
                        ),
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    totalRepeatCount: 1,
                    pause: const Duration(milliseconds: 100),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  )),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: screenheight * 0.01,
                        left: screenwidth * 0.52,
                        right: screenwidth * 0.01,
                        bottom: screenheight * 0.01),
                    height: screenheight * 0.25,
                    width: screenwidth * 0.45,
                    child: Image.asset(
                      "assets/images/virat.jpeg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: screenwidth * 0.4),
                    child: const Text(
                      " Virat kohli❤️",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
