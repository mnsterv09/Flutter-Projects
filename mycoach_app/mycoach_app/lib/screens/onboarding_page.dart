import 'package:flutter/material.dart';
import 'package:mycoach_app/home/intro_screens.dart/Intro_page_1.dart';
import 'package:mycoach_app/home/intro_screens.dart/intro_page_2.dart';
import 'package:mycoach_app/home/intro_screens.dart/intro_page_3.dart';
import 'package:mycoach_app/screens/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.95),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: const Text(
                    'SKIP',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        letterSpacing: 1.0,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                SmoothPageIndicator(controller: _controller, count: 3),
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const LoginPage();
                              },
                            ),
                          );
                        },
                        child: const Text('DONE',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                letterSpacing: 1.0,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const Text('NEXT',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                letterSpacing: 1.0,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
