import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import './login.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "SELAMAT DATANG",
          body: "Here you can write the description of the page, to explain something...",
          image: Center(
            child: Container(
              width: 350,
              height: 350,
              child: Lottie.asset(
                "assets/Lotties/laptop.json",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        PageViewModel(
          title: "LOGIN",
          body: "Here you can write the description of the page, to explain something...",
          image: Center(
            child: Container(
              width: 250,
              height: 250,
              child: Lottie.asset(
                "assets/lotties/login.json",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
      done: const Text("Login", style: TextStyle(fontWeight: FontWeight.w500)),
      showNextButton: true,
      next: const Text("Next >>"),
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
    );
  }
}