import 'package:flutter/material.dart';
import 'package:mycoach_app/screens/forgot_password_page.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const ForgotPasswordPage();
              },
            ),
          );
        },
        child: const Text(
          'Forgot password?',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 14,
            color: Color.fromRGBO(0, 173, 181, 1),
          ),
        ),
      ),
    );
  }
}
