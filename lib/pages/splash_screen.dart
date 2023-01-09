import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/dashboardscreen');
    });
    super.initState();
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 107, 150, 199),
                Color.fromARGB(255, 87, 137, 184),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/learn1.png",
                  height: 300.0,
                  width: 300.0,
                ),
                Image.asset(
                  "assets/images/splash sce.png",
                  height: 300.0,
                  width: 300.0,
                ),
                const Text(
                  "Upgrade your Coding Skills\n With LearnMenia",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            const CircularProgressIndicator(
              valueColor:
                  AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 255, 0, 0)),
            ),
          ],
        ),
      ),
    );
  }
}
