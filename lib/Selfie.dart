import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:path/path.dart';

List<CameraDescription> cameras;

Future<void> newMain() async {
  cameras = await availableCameras();
}

class Selfie extends StatefulWidget {
  @override
  _SelfieState createState() => _SelfieState();
}

class _SelfieState extends State<Selfie> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CameraApp(),
      ),
    );
  }
}

class CameraApp extends StatefulWidget {
  CameraAppState createState() => CameraAppState();
}

class CameraAppState extends State<CameraApp> {
  CameraController controller;
  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return RotationTransition(
      turns: AlwaysStoppedAnimation(270 / 360),
      child: CameraPreview(controller),
    );
  }
}
