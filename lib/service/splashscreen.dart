import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:teleclone/pages/Home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new Home(),
        title: new Text('Welcome In SplashScreen'),
        image: new Image.asset('screenshot.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.red
    );;
  }
}
