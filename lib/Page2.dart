// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:propose_app/backend%20screen/wishvideo.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

class Page2Screen extends StatefulWidget {
  const Page2Screen({super.key});

  @override
  State<Page2Screen> createState() => _Page2ScreenState();
}

class _Page2ScreenState extends State<Page2Screen> {
  String img = "assets/lotti/giftbox.json";
  String click = "assets/lotti/giftopen.json";
  String text = "";
  String text2 = "Here is something Special Gift";

  void changetext() {
    setState(() {
      img = click;
      text = "Swipe left >>";
      text2 = "I Gifted my heart to U ";
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: screenheight * 0.1),
                    // image screen 2
                    height: screenheight * 0.55,
                    width: screenwidth * 1,
                    color: Colors.black,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: screenheight * 0.42,
                            width: screenwidth * 0.75,
                            child: OutlinedButton(
                                onPressed: changetext,
                                child: LottieBuilder.asset(img)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                      child: TextButton(
                          onPressed: changetext,
                          child: Text(
                            text2,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 253, 60, 50),
                                fontSize: 25),
                          ))),
                  Container(
                      margin: const EdgeInsets.only(top: 70),
                      child: TextButton(
                          onPressed: changetext,
                          child: Text(
                            text,
                            style: const TextStyle(color: Colors.amber),
                          ))),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: screenheight * 0.1),
                // image screen 2
                height: screenheight * 1,
                width: screenwidth * 1,
                color: Colors.black,
                child: Column(
                  children: [
                    SizedBox(
                      height: screenheight * 0.4,
                      width: screenwidth * 0.9,
                      child: AnotherCarousel(
                        images: const [
                          ExactAssetImage("assets/images/page2/1.jpg"),
                          ExactAssetImage("assets/images/page2/2.jpg"),
                          ExactAssetImage("assets/images/page2/3.jpg"),
                        ],
                        dotSize: 6,
                        indicatorBgPadding: 5.0,
                      ),
                    )
                        .animate()
                        .fade(duration: 1000.ms)
                        .scale(delay: 1000.ms), // runs after fade.,
                    Container(
                      margin: EdgeInsets.only(
                          left: screenwidth * 0.05,
                          right: screenwidth * 0.054,
                          top: screenheight * 0.02),
                      child: const Text(
                        "Hey Anushka \n I just wanna you forever",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22,
                            color: Color.fromARGB(255, 255, 255, 25)),
                      ).animate().fade(duration: 1000.ms).scale(delay: 2000.ms),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: screenwidth * 0.15,
                          right: screenwidth * 0.15,
                          top: screenheight * 0.051),
                      child: const Text(
                        "Main sitaroon bhari raat me chand ko dekhta nahi Main vadiyon me baitha nazaaron ko dekhta nahi Kuch esa sukoon h bas use dekhe jane me Ke jha woh dikhai de jata hai, main usse aage dekhta nahi",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "italic",
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ).animate().fade(duration: 1000.ms).scale(delay: 3000.ms),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: screenwidth * 0.15,
                          right: screenwidth * 0.15,
                          top: screenheight * 0.051),
                      child: const Text(
                        "swipe left -->",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 225, 221, 227)),
                      ).animate().fade(duration: 1000.ms).scale(delay: 3500.ms),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: screenheight * 0.1),
                // image screen 3
                height: screenheight * 1,
                width: screenwidth * 1,
                color: Colors.black,
                child: Column(
                  children: [
                    // Image.asset(
                    //   "assets/images/page2/3.jpg",
                    //   height: screenheight * 0.4,
                    // )
                    //     .animate()
                    //     .fade(duration: 1000.ms)
                    //     .scale(delay: 1000.ms), // runs after fade.,
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: screenheight * 0.32,
                      child: const backgroundVideoWidget2(),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: screenwidth * 0.05,
                          right: screenwidth * 0.054,
                          top: screenheight * 0.05),
                      child: const Text(
                        "I love you my Queen",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: "bold",
                            color: Color.fromARGB(255, 247, 98, 234)),
                      ).animate().fade(duration: 1000.ms).scale(delay: 2000.ms),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: screenwidth * 0.15,
                            right: screenwidth * 0.15,
                            top: screenheight * 0.01),
                        child: const Text(
                          "Beqaraar dil ko sabaar ki inteha mili Ek shakhas me jo kuch dardoon ko panah mili Lafzoon me bayan kar panna mumkin naa hua Jab mohobat me tumhari, meri nazroon ko zubaan mili….",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "italic",
                              color: Color.fromARGB(255, 255, 255, 255)),
                        )
                            .animate()
                            .fade(duration: 1000.ms)
                            .scale(delay: 3000.ms)),
                    Container(
                      margin: EdgeInsets.only(
                          left: screenwidth * 0.15,
                          right: screenwidth * 0.15,
                          top: screenheight * 0.15),
                      child: OutlinedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "page3");
                              },
                              child: const Text(
                                "Just Touch me baby",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 225, 221, 227)),
                              ))
                          .animate()
                          .fade(duration: 1000.ms)
                          .scale(delay: 3500.ms),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
