import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'login_page.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              body: 'Atinja o corpo dos seus sonhos fazendo exercícios',
              image: buildImage('assets/images/onboards1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              body: 'Tenha seus treinos montados por um profissional',
              image: buildImage('assets/images/onboards2.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              body: 'Acesso 24h aos seus treinos e dietas',
              image: buildImage('assets/images/onboards3.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text(
            'Skip',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          onDone: () => goToLoginPage(context),
        ),
      );

  void goToLoginPage(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginPage()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  PageDecoration getPageDecoration() => PageDecoration(
        bodyTextStyle: TextStyle(
          fontSize: 32,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      );
}
