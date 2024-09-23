// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:propose_app/backend%20screen/backgroundVideoWidget.dart';
import 'package:propose_app/backend%20screen/Page3back.dart';

class Page3Screen extends StatelessWidget {
  const Page3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(251, 243, 247, 243),
      body: Stack(children: [
        const backgroundVideoWidget(),
        Column(
          children: [
            Container(
              height: screenheight * 0.15,
              width: screenwidth * 1,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 50,
                      ),
                      height: 60,
                      width: 290,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        color: Color.fromARGB(248, 229, 224, 243),
                      ),
                      child: const Text(
                        "Our Love Story",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 36,
                          fontFamily: "italic",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Stack(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      card2p1(
                        events1:
                            "The first time \n I saw you \n '26 May, 2022' ",
                        events2:
                            "Koi ajnabi itna khaas \n ho gaya hai, Lagta  \n hai hume saccha pyaar  \n ho gaya hai ..\n Saamne baithe raho dil \n ko qaraar aayega, \n Jitnaa dekhenge tumhein \n utna hi pyar aayega.",
                        img1: "assets/images/bahome.png",
                        img2: "assets/images/seeu2.png",
                        swipe: "Swipe Left",
                      ),
                      card2p1(
                        events1: "First Time \n Wa Talk \n '26 may 2022' ",
                        events2:
                            "The first time when I \n talk to you is really \n Awesome which i can't \n forget in my life those \n moment , the beaauty of \n your lips while speaking, \n everything is infront \n of me when I \n closes my eye",
                        img1: "assets/images/cuddle.png",
                        img2: "assets/images/talk.png",
                        swipe: "Swipe Left",
                      ),
                      card2p1(
                        events1: "First time  \n we meet \n '21 sep 2024'",
                        events2:
                            "Mujhko phir wahi suhana \n najara mil gaya, \n In aankhon ko deedar \n tumhara mil gaya, \n Ab kisi aur ki tamanna \n kyun main karu, \n Jab mujhe tumhari baahon \n ka sahara mil gaya.",
                        img1: "assets/images/kiss.png",
                        img2: "assets/images/bahome.png",
                        swipe: "Swipe Left",
                      ),
                      card2p1(
                        events1:
                            "The first time \n we spend \n time together \n '25 nov 2025'",
                        events2:
                            " Jab se dekha hai teri \n aankho me jhank kar,\n Koe bhi aayina acchha \n nahi lagata, \n Teri mohabbat me aise \n hue hai deewane, \n Ke tere bina ab koe \n accha nahi lagata. ",
                        img1: "assets/images/seeu2.png",
                        img2: "assets/images/kiss.png",
                        swipe: "Click Below ",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: screenheight * 0.08,
              width: 210,
              child: OutlinedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      const StadiumBorder()),
                  side: MaterialStateProperty.resolveWith<BorderSide>(
                      (Set<MaterialState> states) {
                    final Color color = states.contains(MaterialState.pressed)
                        ? const Color.fromARGB(255, 53, 4, 17)
                        : const Color.fromARGB(255, 47, 34, 231);
                    return BorderSide(color: color, width: 5);
                  }),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "page4");
                },
                child: const Text(
                  'Click Me Honey',
                  style: TextStyle(
                      fontSize: 22, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ).animate().fade(duration: 1000.ms).scale(delay: 7000.ms),
            )
          ],
        ),
      ]),
    );
  }
}
