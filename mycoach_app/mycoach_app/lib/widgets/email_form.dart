import 'package:flutter/material.dart';
import 'package:mycoach_app/utilities/constants.dart';

Widget EmailFormLogin() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Email',
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: 54.0,
        child: const TextField(
          keyboardType: TextInputType.name,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15.0),
              prefixIcon: Icon(Icons.person, color: Colors.black12)),
        ),
      ),
    ],
  );
}
