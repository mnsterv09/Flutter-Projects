import 'package:flutter/material.dart';
import 'package:mycoach_app/screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'MyCoach App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primaryColor: Colors.purple),
      home: LoginPage(),
    );
  }
}
