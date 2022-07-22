import 'package:flutter/material.dart';

Widget SocialButton(Function onTap, AssetImage logo) {
  return GestureDetector(
    onTap: () => onTap,
    child: Container(
      height: 30.0,
      width: 140.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        shape: BoxShape.rectangle,
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 6.0,
          ),
        ],
        image: DecorationImage(
          image: logo,
        ),
      ),
    ),
  );
}
