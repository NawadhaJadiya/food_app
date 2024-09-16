import 'package:flutter/material.dart';
import 'dart:async';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context,
          '/second_screen'); // Replace '/homepage' with your actual next page route
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Theme.of(context).primaryColorLight,
              Theme.of(context).primaryColorDark
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/firstLogo.png'),
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Fast ',
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 35,
                            color: Colors.white),
                      ),
                      Text(
                        'Food',
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 35,
                            color: Colors.white),
                      )
                    ],
                  ),
                ]),
          )),
    );
  }
}
