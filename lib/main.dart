import 'package:flutter/material.dart';
import 'package:food_app/Screen/authorization.dart';
import 'package:food_app/Screen/second_screen.dart';
import 'package:food_app/Screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/second_screen': (context) =>
              const SecondScreen(), // Replace AuthorizationScreen with your actual widget class
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColorLight: const Color.fromARGB(255, 255, 174, 51),
          primaryColorDark: Color.fromARGB(244, 164, 66, 0),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 214, 87, 48)),
          useMaterial3: true,
        ),
        home: const Splashscreen());
  }
}
