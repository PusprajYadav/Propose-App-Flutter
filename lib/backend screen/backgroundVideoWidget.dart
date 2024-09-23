// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class backgroundVideoWidget extends StatefulWidget {
  const backgroundVideoWidget({
    super.key,
  });

  @override
  State<backgroundVideoWidget> createState() => _backgroundVideoWidgetState();
}

class _backgroundVideoWidgetState extends State<backgroundVideoWidget> {
  late final VideoPlayerController vidcontroller;

  @override
  void initState() {
    vidcontroller = VideoPlayerController.asset("assets/vid/giftbg.mp4")
      ..initialize().then((_) {
        vidcontroller.play();
        vidcontroller.setLooping(true);
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => VideoPlayer(vidcontroller);
}
