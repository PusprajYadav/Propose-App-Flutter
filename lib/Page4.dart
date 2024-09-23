// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:propose_app/backend%20screen/page4backend.dart';
import 'package:propose_app/contactme.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    double screenh = MediaQuery.of(context).size.height;
    // double screenw = MediaQuery.of(context).size.width;
    return Container(
      color: const Color.fromARGB(255, 9, 4, 4),
      margin: EdgeInsets.only(top: screenh * 0.03),
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              TabBar(dividerColor: Colors.black, tabs: [
                Tab(
                  height: screenh * 0.05,
                  iconMargin: const EdgeInsets.only(left: 10, right: 10),
                  child: Icon(
                    Icons.favorite,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    size: screenh * 0.06,
                  ),
                ),
                Tab(
                  child: Icon(
                    Icons.favorite,
                    color: const Color.fromARGB(255, 0, 255, 51),
                    size: screenh * 0.06,
                  ),
                ),
                Tab(
                  child: Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 233, 229, 0),
                    size: screenh * 0.06,
                  ),
                ),
                Tab(
                  child: Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 248, 0, 0),
                    size: screenh * 0.06,
                  ),
                ),
              ]),
              const Expanded(
                child: TabBarView(children: [
                  card2p2(
                    events1: "The first time  I saw you  '26 May, 2022' ",
                    img1: "assets/images/p41.jpg",
                    img2: "assets/images/p42.jpeg",
                  ),
                  card2p2(
                    events1: "First Time  Wa Talk  '26 may 2022' ",
                    img1: "assets/images/p43.jpg",
                    img2: "assets/images/p44.webp",
                  ),
                  card2p2(
                    events1: "The first long driv with you '25 nov 2025'",
                    img1: "assets/images/p45.jpg",
                    img2: "assets/images/p46.webp",
                  ),
                  ContactPage()
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
