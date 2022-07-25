import 'package:flutter/material.dart';
import 'package:mycoach_app/widgets/create_account_button.dart';
import 'package:mycoach_app/widgets/email_form.dart';
import 'package:mycoach_app/widgets/login_button_register.dart';
import 'package:mycoach_app/widgets/name_form_register.dart';
import 'package:mycoach_app/widgets/password_form.dart';
import 'package:mycoach_app/widgets/phone_form_register.dart';
import 'package:mycoach_app/widgets/register_with.dart';
import 'package:mycoach_app/widgets/social_button_row.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Create Accounts',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Please enter your credentials to proceed',
                  style: TextStyle(
                    color: Color.fromRGBO(58, 71, 80, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 30.0),
                NameFormRegister(),
                const SizedBox(height: 15.0),
                PhoneFormRegister(),
                const SizedBox(height: 15.0),
                EmailFormLogin(),
                const SizedBox(height: 15.0),
                PasswordFormLogin(),
                const SizedBox(height: 30.0),
                CreateAccountButtonForm(),
                const SizedBox(height: 30.0),
                RegisterWith(),
                const SizedBox(height: 10.0),
                SocialButtonRow(),
                const SizedBox(height: 30.0),
                LoginButtonRegister(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
