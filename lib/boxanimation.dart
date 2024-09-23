import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class BoxAnimation extends StatefulWidget {
  const BoxAnimation({super.key});

  @override
  State<BoxAnimation> createState() => _BoxAnimationState();
}

class _BoxAnimationState extends State<BoxAnimation> {
  String img = "assets/lotti/giftbox.json";
  String click = "assets/lotti/giftopen.json";

  void changetext() {
    setState(() {
      img = click;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenheight * 0.52,
              width: screenwidth * 0.9,
              child: OutlinedButton(
                  onPressed: changetext, child: LottieBuilder.asset(img)),
            ),
          ],
        ),
      ),
    );
  }
}
