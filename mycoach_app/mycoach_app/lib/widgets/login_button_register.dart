import 'package:flutter/material.dart';
import 'package:mycoach_app/screens/login_page.dart';

class LoginButtonRegister extends StatefulWidget {
  LoginButtonRegister({Key? key}) : super(key: key);

  @override
  State<LoginButtonRegister> createState() => _LoginButtonRegisterState();
}

class _LoginButtonRegisterState extends State<LoginButtonRegister> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return const LoginPage();
          },
        ));
      },
      child: Align(
        alignment: Alignment.center,
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Already have an account?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                children: [
                  TextSpan(
                    text: ' Login!',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 173, 181, 1),
                      fontSize: 14.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
