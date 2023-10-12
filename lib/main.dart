import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const UiBasicApp());
}

class UiBasicApp extends StatefulWidget {
  const UiBasicApp({super.key});

  @override
  State<UiBasicApp> createState() => _UiBasicAppState();
}

class _UiBasicAppState extends State<UiBasicApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UI Basic",
      theme: ThemeData(fontFamily: "Oxygen"),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
