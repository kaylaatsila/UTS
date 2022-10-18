import 'package:flutter/material.dart';
import 'dart:async';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _Splash createState() => _Splash();
}

class _Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('bg-splash.jpg'), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('yubis-logo.png')),
          ))
        ],
      ),
    );
  }
}
