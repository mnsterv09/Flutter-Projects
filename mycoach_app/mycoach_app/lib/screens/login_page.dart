import 'package:flutter/material.dart';
import 'package:mycoach_app/widgets/email_form.dart';
import 'package:mycoach_app/widgets/forgot_password_button.dart';
import 'package:mycoach_app/widgets/login_button_form.dart';
import 'package:mycoach_app/widgets/login_with.dart';
import 'package:mycoach_app/widgets/password_form.dart';
import 'package:mycoach_app/widgets/register_form_login.dart';
import 'package:mycoach_app/widgets/rememberme_checkbox_form.dart';
import 'package:mycoach_app/widgets/social_button_row.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Fitness!',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Hello there, sign in to continue!',
              style: TextStyle(
                color: Color.fromRGBO(58, 71, 80, 1),
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 30),
            EmailFormLogin(),
            const SizedBox(height: 30),
            PasswordFormLogin(),
            const SizedBox(height: 5),
            ForgotPassword(),
            const RememberMeCheckbox(),
            const SizedBox(height: 15),
            LoginButtonForm(),
            const SizedBox(height: 30),
            LoginWith(),
            const SizedBox(height: 10),
            SocialButtonRow(),
            const SizedBox(height: 90),
            RegisterButton(),
          ],
        ),
      ),
    );
  }
}
