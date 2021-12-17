import 'package:ola_mundo/app_controller.dart';

import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

import 'login_page.dart';

class AppWidget extends StatelessWidget {
  final String title;
  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDarkTheme
                  ? Brightness.dark
                  : Brightness.light),
          routes: {
            '/': (context) => const LoginPage(),
            '/home': (context) => const HomePage()
          },
        );
      },
    );
  }
}