import 'package:flutter/material.dart';
import 'package:login_page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var textFieldBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.transparent));
    return MaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
              contentPadding: EdgeInsets.zero,
              fillColor: Colors.white,
              enabledBorder: textFieldBorder,
              focusedBorder: textFieldBorder,
              filled: true)),
    );
  }
}
