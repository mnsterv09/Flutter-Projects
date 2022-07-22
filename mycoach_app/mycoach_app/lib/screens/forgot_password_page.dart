import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mycoach_app/screens/components/input_form_compopnent.dart';

import 'components/button_component.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Reset Password',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Enter your email and we’ll send an instructions to reset your password',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 24),
            InputFormComponent(),
            ButtonComponent(
              onTap: null,
              label: 'qwxwk',
            ),
          ],
        ),
      ),
    );
  }
}
