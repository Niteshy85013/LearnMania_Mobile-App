import 'package:flutter/material.dart';
import 'package:learnprac/Auth/login_page.dart';
import 'package:learnprac/bottom_screen/dashboard.dart';
import 'package:learnprac/pages/add_notes.dart';
import 'package:learnprac/pages/add_schedule.dart';
import 'package:learnprac/pages/help_section.dart';
import 'package:learnprac/pages/splash_screen.dart';

import 'Auth/sign_up.dart';
import 'pages/schedule.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LearnMania',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/registerscreen': (context) => const registerscreen(),
        '/helpscreen':(context) => const helpscreen(),
        '/schedulescreen': (context) => const schedulescreen(),
        '/dashboardscreen': (context) => const dashboardscreen(),
        '/loginscreen': (context) => const loginscreen(),
        '/addnotescreen': (context) => const addnotescreen(),
        '/addschedulescreen':(context) => const addschedulescreen(),
      },
    ),
  );
}
