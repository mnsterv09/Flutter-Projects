import 'package:flutter/material.dart';
import 'package:mycoach_app/screens/steps_pages/favorite_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'MyCoach App';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primaryColor: Colors.purple),
      home: const FavoritePage(),
    );
  }
}
