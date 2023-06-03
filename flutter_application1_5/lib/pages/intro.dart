import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import './login.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Title Of First Page",
          body:
              "Here you can write the descriptipn of the page, to explain something.....",
          image: Center(
            child: Container(
              width: 350,
              height: 350,
              child: Lottie.asset(
                "assets/lotties/laptop.json",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        PageViewModel(
          title: "Title of second page",
          body:
              "Here you can write the descriptipn of the page, to explain something.....",
          image: Center(
            child: Container(
              width: 250,
              height: 350,
              child: Lottie.asset(
                "assets/lotties/login.json",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
      done: const Text(
        "Login",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      showNextButton: true,
      next: Text("Next >>>"),
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
    );
  }
}
