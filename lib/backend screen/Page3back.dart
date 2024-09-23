// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class card2p1 extends StatelessWidget {
  final String events1;
  final String events2;
  final String img1;
  final String img2;
  final String swipe;
  const card2p1({
    super.key,
    required this.events1,
    required this.events2,
    required this.img1,
    required this.img2,
    required this.swipe,
  });

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(
        top: screenheight * 0.01,
      ),
      height: screenheight * 0.72,
      width: screenwidth * .98,
      child: Card(
        color: const Color.fromARGB(74, 26, 15, 224).withOpacity(0.2),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  alignment: Alignment.topLeft,
                  height: screenheight * 0.28,
                  width: screenwidth * 0.45,
                  child: Image.asset(
                    img1,
                    fit: BoxFit.cover,
                  )
                      .animate()
                      .fadeIn(
                        duration: 500.ms,
                      )
                      .scale(delay: 1200.ms),
                ),
                SizedBox(
                  height: screenheight * 0.25,
                  width: screenwidth * 0.45,
                  child: Text(
                    events1,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(248, 62, 222, 48),
                        fontFamily: "Try1"),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: screenheight * 0.25,
                  width: screenwidth * 0.45,
                  margin: EdgeInsets.only(left: 5, top: screenheight * 0.1),
                  child: Text(
                    events2,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(248, 237, 246, 240)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, top: screenheight * 0.1),
                  alignment: Alignment.bottomLeft,
                  height: screenheight * 0.25,
                  width: screenwidth * 0.42,
                  child: Image.asset(
                    img2,
                    fit: BoxFit.fill,
                  )
                      .animate()
                      .fadeIn(
                        duration: 1000.ms,
                      )
                      .scale(delay: 1000.ms),
                ),
              ],
            ),
            Text(
              swipe,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(248, 218, 226, 218)),
            ),
          ],
        ),
      ),
    );
  }
}
