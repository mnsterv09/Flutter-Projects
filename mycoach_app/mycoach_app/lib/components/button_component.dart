import 'package:flutter/material.dart';
import 'package:mycoach_app/screens/verify_account_page.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({
    required this.onTap,
    required this.label,
    Key? key,
  }) : super(key: key);

  final Function()? onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return const VerifyAccount();
          },
        ));
      },
      child: Container(
        height: 52,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(0, 173, 181, 1),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
            letterSpacing: 1.5,
          ),
        ),
      ),
    );
  }
}
