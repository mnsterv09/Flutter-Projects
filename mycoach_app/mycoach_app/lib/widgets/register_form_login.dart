import 'package:flutter/material.dart';
import 'package:mycoach_app/screens/register_page.dart';

class RegisterButton extends StatefulWidget {
  RegisterButton({Key? key}) : super(key: key);

  @override
  State<RegisterButton> createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return const RegisterPage();
          },
        ));
      },
      child: Align(
        alignment: Alignment.center,
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Dont have an account?',
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
                    text: ' Register!',
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
