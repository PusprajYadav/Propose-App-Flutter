// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class card2p2 extends StatelessWidget {
  final String events1;

  final String img1;
  final String img2;

  const card2p2({
    super.key,
    required this.events1,
    required this.img1,
    required this.img2,
  });

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(
        top: screenheight * 0.01,
      ),
      height: screenheight * 0.82,
      width: screenwidth * .98,
      child: Card(
        color: const Color.fromARGB(255, 0, 0, 0).withOpacity(1),
        child: Center(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    alignment: Alignment.center,
                    height: screenheight * 0.35,
                    width: screenwidth * 0.95,
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
                  Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                    ),
                    height: screenheight * 0.07,
                    width: screenwidth * 0.95,
                    child: Text(
                      events1,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(248, 255, 255, 255),
                          fontFamily: "head"),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10, bottom: 10),
                    alignment: Alignment.topCenter,
                    height: screenheight * 0.35,
                    width: screenwidth * 0.95,
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
            ],
          ),
        ),
      ),
    );
  }
}
