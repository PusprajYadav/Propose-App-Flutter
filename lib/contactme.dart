import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.instagram.com/nexustycoon/');
final Uri _url1 = Uri.parse('https://www.youtube.com/@NooB_IITian');
final Uri _url2 = Uri.parse('https://telegram.me/NexusTycoon');
final Uri _url3 =
    Uri.parse('https://www.whatsapp.com/channel/0029Vago0kSJuyAIvG5Qdp2U');
final Uri _url4 = Uri.parse('https://x.com/NexusTycoon');

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  Future<void> _launchurl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  Future<void> _launchurl1() async {
    if (!await launchUrl(_url1)) {
      throw Exception('Could not launch $_url1');
    }
  }

  Future<void> _launchurl2() async {
    if (!await launchUrl(_url2)) {
      throw Exception('Could not launch $_url2');
    }
  }

  Future<void> _launchurl3() async {
    if (!await launchUrl(_url3)) {
      throw Exception('Could not launch $_url3');
    }
  }

  Future<void> _launchurl4() async {
    if (!await launchUrl(_url4)) {
      throw Exception('Could not launch $_url4');
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: screenheight * 0.14,
            width: screenwidth * 0.99,
            child: Container(
              margin: EdgeInsets.only(
                  top: screenheight * 0.05, bottom: screenheight * 0.02),
              height: 60,
              width: 290,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Color.fromARGB(248, 124, 249, 140),
              ),
              child: const Text(
                "About Us ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: "italic",
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: screenwidth * 0.05,
                bottom: screenheight * 0.05,
                right: screenwidth * 0.05),
            height: screenheight * 0.15,
            width: screenwidth * 0.99,
            child: Image.asset("assets/images/logo.jpg", fit: BoxFit.fill),
          ),
          Container(
            margin: EdgeInsets.only(
                left: screenwidth * 0.05,
                bottom: screenheight * 0.02,
                right: screenwidth * 0.05),
            height: screenheight * 0.38,
            width: screenwidth * 0.99,
            child: const Text(
              "This is student of IIT Madras , created a unique way to express your love. if you want to create app like this for your Girlfriend , boyfriend , wife , mother on the vocation of birthday , valentines day , Mothers day contact us on given below social media. We love to makes your loved one special \n \n Contact us to make your own app",
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: screenwidth * 0.05,
                bottom: screenheight * 0.01,
                right: screenwidth * 0.05),
            height: screenheight * 0.06,
            width: screenwidth * 0.99,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: _launchurl,
                    icon: Image.asset("assets/images/socialicon/insta.webp")),
                SizedBox(
                  width: screenwidth * 0.03,
                ),
                IconButton(
                    onPressed: _launchurl1,
                    icon: Image.asset("assets/images/socialicon/yt.avif")),
                SizedBox(
                  width: screenwidth * 0.03,
                ),
                IconButton(
                    onPressed: _launchurl2,
                    icon: Image.asset("assets/images/socialicon/tg.jpg")),
                SizedBox(
                  width: screenwidth * 0.03,
                ),
                IconButton(
                    onPressed: _launchurl3,
                    icon: Image.asset("assets/images/socialicon/whatsapp.jpg")),
                SizedBox(
                  width: screenwidth * 0.03,
                ),
                IconButton(
                    onPressed: _launchurl4,
                    icon: Image.asset("assets/images/socialicon/x.webp")),
                SizedBox(
                  width: screenwidth * 0.03,
                ),
              ],
            ),
          ),

          // Container(
          //   height: screenheight * 0.1,
          //   width: screenwidth * 0.99,
          //   child: Row(
          //     children: [
          //       Container(
          //         width: screenwidth * 0.19,
          //         child: MaterialButton(
          //             onPressed: () {},
          //             child:
          //                 Image.asset("assets/images/socialicon/insta.webp")),
          //       ),
          //       Container(
          //         width: screenwidth * 0.19,
          //         child: MaterialButton(
          //             onPressed: () {},
          //             child: Image.asset("assets/images/socialicon/tg.jpg")),
          //       ),
          //       Container(
          //         width: screenwidth * 0.19,
          //         child: MaterialButton(
          //             onPressed: () {},
          //             child:
          //                 Image.asset("assets/images/socialicon/whatsapp.jpg")),
          //       ),
          //       Container(
          //         width: screenwidth * 0.19,
          //         child: MaterialButton(
          //             onPressed: () {},
          //             child: Image.asset("assets/images/socialicon/x.webp")),
          //       ),
          //       Container(
          //         width: screenwidth * 0.19,
          //         child: MaterialButton(
          //             onPressed: () {},
          //             child: Image.asset("assets/images/socialicon/yt.avif")),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            height: screenheight * 0.07,
            width: screenwidth * 0.99,
            child: Container(
              margin: EdgeInsets.only(
                  left: screenwidth * 0.25,
                  right: screenwidth * 0.25,
                  top: screenheight * 0.01),
              child: OutlinedButton(
                  onPressed: () {
                    if (Platform.isAndroid) {
                      SystemNavigator.pop();
                    } else {
                      exit(0);
                    }
                  },
                  child: const Text(
                    "Close App",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 225, 221, 227)),
                  )).animate().fade(duration: 1000.ms).scale(delay: 3500.ms),
            ),
          ),
        ],
      ),
    );
  }
}
