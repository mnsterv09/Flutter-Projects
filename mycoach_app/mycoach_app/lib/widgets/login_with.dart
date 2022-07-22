import 'package:flutter/material.dart';

Widget LoginWith() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: const <Widget>[
      Text(
        'Or Login with',
        style: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Montserrat',
            color: Colors.black,
            fontWeight: FontWeight.w300),
      ),
      SizedBox(height: 20.0),
    ],
  );
}
