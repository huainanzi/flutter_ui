import 'package:flutter/material.dart';
import 'package:flutter_ui/flutter_house_rent_app_02/modules/home/home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "House Rent App",
      theme: ThemeData(
        backgroundColor: const Color(0xFFF5F6F6),
        primaryColor: const Color(0xFF811B83),
        accentColor: const Color(0xFFFA5019),
        textTheme: TextTheme(
          headline1: const TextStyle(
            color: Color(0xFF100E34),
          ),
          bodyText1: TextStyle(
            color: Color(0xFF100E34).withOpacity(0.5),
          )
        )

      ),
      home: const Homepage(),
    );
  }
}
