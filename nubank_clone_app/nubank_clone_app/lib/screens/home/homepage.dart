import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone_app/screens/home/account/account.dart';
import 'package:nubank_clone_app/screens/home/model/header.dart';
import 'package:nubank_clone_app/screens/home/notification/notification_page.dart';
import 'package:nubank_clone_app/utils/colors_pattern.dart';
import 'actions/menu_items.dart';
import 'creditsCard/my_credit_cards_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Header(),
              Account(),
              MenuItems(),
              Divider(thickness: 1.6),
              MyCreditCards(),
              NotificationsPage(),
              Divider(thickness: 1.6),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
    );
  }
}
