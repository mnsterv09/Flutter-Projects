import 'package:flutter/material.dart';
import 'package:mycoach_app/components/button_component.dart';

Widget ResetPasswordButtonForm() {
  return ButtonComponent(
    onTap: () => ('Reset Password Button Pressed'),
    label: 'Reset Password',
  );
}
