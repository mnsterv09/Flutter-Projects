import 'package:flutter/material.dart';
import 'package:mycoach_app/utilities/constants.dart';

class InputFormComponent extends StatefulWidget {
  const InputFormComponent({Key? key}) : super(key: key);

  @override
  State<InputFormComponent> createState() => _InputFormState();
}

class _InputFormState extends State<InputFormComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: kBoxDecorationStyle,
      height: 60,
      child: const TextField(
        keyboardType: TextInputType.text,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14.0),
        ),
      ),
    );
  }
}
