import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone_app/controllers/controller_homepage.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _accountChevron(),
            const SizedBox(height: 12),
            _balanceAccount(),
          ],
        ));
  }

  _accountChevron() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Conta',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 250),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _balanceAccount() {
    return GetBuilder<ControllerHomePage>(
        init: ControllerHomePage(),
        builder: (controllerHomePage) {
          return Text(
            controllerHomePage.balance,
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          );
        });
  }
}
