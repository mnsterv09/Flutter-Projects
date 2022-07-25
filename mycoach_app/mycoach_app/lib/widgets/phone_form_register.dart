import 'package:flutter/material.dart';
import 'package:mycoach_app/utilities/constants.dart';

Widget PhoneFormRegister() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Phone',
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w300,
        ),
      ),
      const SizedBox(height: 10.0),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: 54.0,
        child: const TextField(
          keyboardType: TextInputType.number,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15.0),
              prefixIcon: Icon(
                Icons.phone,
                color: Colors.black12,
              )),
        ),
      )
    ],
  );
}
