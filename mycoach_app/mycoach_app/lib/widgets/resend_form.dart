import 'package:flutter/material.dart';

class ResendFormButton extends StatefulWidget {
  const ResendFormButton({Key? key}) : super(key: key);

  @override
  State<ResendFormButton> createState() => _ResendFormButtonState();
}

class _ResendFormButtonState extends State<ResendFormButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ('Resend Button Pressed'),
      child: Align(
        alignment: Alignment.center,
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Resend',
                style: TextStyle(
                  color: Color.fromRGBO(0, 173, 181, 1),
                  fontSize: 14.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
