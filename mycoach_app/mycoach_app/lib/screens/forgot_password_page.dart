import 'package:flutter/material.dart';
import 'package:mycoach_app/components/button_component.dart';
import 'package:mycoach_app/components/input_form_component.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Reset Password',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: 'Monteserrat',
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Enter your email and we send an instructions to reset your password',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 25),
            InputFormComponent(),
            SizedBox(height: 25),
            ButtonComponent(
              onTap: null,
              label: 'Reset Password',
            ),
          ],
        ),
      ),
    );
  }
}
