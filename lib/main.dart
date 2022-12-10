import 'package:fiverr/landing_ad.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fiverr Gig Images',
      theme: ThemeData(fontFamily: 'AmericanCaptain'),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 900,
          child: Center(
            child: SizedBox(height: 835, width: 1280, child: LandingAd()),
          ),
        ),
      ),
    );
  }
}
