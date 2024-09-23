// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class backgroundVideoWidget2 extends StatefulWidget {
  const backgroundVideoWidget2({
    super.key,
  });

  @override
  State<backgroundVideoWidget2> createState() => _backgroundVideoWidget2State();
}

class _backgroundVideoWidget2State extends State<backgroundVideoWidget2> {
  late final VideoPlayerController vidcontroller;

  @override
  void initState() {
    vidcontroller = VideoPlayerController.asset("assets/vid/virat.mp4")
      ..initialize().then((_) {
        vidcontroller.play();
        vidcontroller.setLooping(false);
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => VideoPlayer(vidcontroller);
}
