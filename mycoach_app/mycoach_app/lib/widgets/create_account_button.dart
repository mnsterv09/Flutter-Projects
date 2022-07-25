import 'package:flutter/material.dart';
import 'package:mycoach_app/components/button_component.dart';

Widget CreateAccountButtonForm() {
  return ButtonComponent(
    onTap: () => ('Create Account Button Pressed'),
    label: 'Create Account',
  );
}
