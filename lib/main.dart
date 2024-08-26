import 'package:flutter/material.dart';
import 'package:minsoc/pages/login_page.dart';
import 'package:minsoc/theme/dark_mode.dart';
import 'package:minsoc/theme/light_mode.dart';
import 'package:minsoc/theme/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RegisterPage(),
        theme: lightMode,
        darkTheme: darkMode);
  }
}
