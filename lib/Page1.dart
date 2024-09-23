// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Page1Screen extends StatefulWidget {
  const Page1Screen({super.key});

  @override
  State<Page1Screen> createState() => _Page1ScreenState();
}

class _Page1ScreenState extends State<Page1Screen> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: screenheight * 0.1),
            //This is used for photo Girl name under it
            height: screenheight * 0.25,
            width: screenwidth,
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/anu2.jpg", // girls pic on top at page1
                    height: screenheight * 0.18,
                  ),
                  const Text(
                    "Hello Cutie",
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 232, 116, 238),
                        fontFamily: "italic"),
                  ),
                ],
              ),
            ),
          ),
          Container(
            //This is used for boy and girl name
            height: screenheight * 0.20,
            margin: EdgeInsets.only(top: screenheight * 0.5),
            child: Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Virat's Heart",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 227, 94, 248)),
                    )),
                Container(
                    margin: EdgeInsets.only(left: screenwidth * 0.37),
                    child: const Text(
                      "Anushka's heart",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 227, 94, 248)),
                    )),
              ],
            ),
          ),
          Container(
            height: screenheight * 0.20,
            margin: EdgeInsets.only(top: screenheight * 0.4),
            child: Row(
              children: [
                Lottie.asset("assets/lotti/heart.json",
                    repeat: true, height: 100, width: screenwidth * 0.25),
                Lottie.asset("assets/lotti/heartbeat.json",
                    repeat: true, width: screenwidth * 0.5),
                Lottie.asset("assets/lotti/heart.json",
                    repeat: true, height: 100, width: screenwidth * 0.25),
              ],
            ),
          ),
          Container(
              height: screenheight * 0.20,
              margin: EdgeInsets.only(
                  top: screenheight * 0.7,
                  left: screenwidth * 0.08,
                  right: screenwidth * 0.08),
              child: const Text(
                "This is How My heart wanted to connect with you , Without you, life feels incomplete. You're not just a dream for me, but a reality. Will you be a part of my life?",
                style: TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(255, 241, 241, 241),
                    fontFamily: "italic"),
              )
                  .animate()
                  .fadeIn() // uses `Animate.defaultDuration`
                  .scale() // inherits duration from fadeIn
                  .move(
                      delay: 5000.ms,
                      duration:
                          10000000.ms) // runs after the above w/new duration
                  .blurXY() // inher,
              ),
          Container(
            height: screenheight * 0.07,
            margin: EdgeInsets.only(
                top: screenheight * 0.87, left: screenwidth * 0.25),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "page2");
              },
              child: const Text(
                textAlign: TextAlign.center,
                "Touch Me",
                style:
                    TextStyle(backgroundColor: Color.fromARGB(25, 10, 45, 12)),
              ),
            ),
          ),
          SizedBox(
            height: screenheight * 0.05,
          ),
          //give lower a little side
        ],
      ),
    );
  }
}
