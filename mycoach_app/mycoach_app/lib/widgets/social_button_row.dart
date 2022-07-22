import 'package:flutter/material.dart';
import 'social_button_form.dart';

Widget SocialButtonRow() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SocialButton(
          () => ('Login with Google'),
          const AssetImage(
            'assets/icons/googlelogo.svg',
          ),
        ),
        const SizedBox(height: 30),
        SocialButton(
          () => ('Login with Facebook'),
          const AssetImage(
            'assets/icons/facelogo.svg',
          ),
        ),
      ],
    ),
  );
}
