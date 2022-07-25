import 'package:flutter/material.dart';
import 'package:mycoach_app/utilities/constants.dart';

Widget PasswordFormLogin() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Password',
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: 60,
        child: const TextField(
          obscureText: true,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.0),
            prefixIcon: Icon(Icons.lock, color: Colors.black12),
          ),
        ),
      ),
    ],
  );
}
