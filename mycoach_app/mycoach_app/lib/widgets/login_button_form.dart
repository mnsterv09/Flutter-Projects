import 'package:flutter/material.dart';
import 'package:mycoach_app/components/button_component.dart';

Widget LoginButtonForm() {
  return ButtonComponent(
    onTap: () => ('Login Button Pressed'),
    label: 'Login',
  );
}
