// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../Widgets/listview_box.dart';
import '../Widgets/snackbar.dart';
import '../Widgets/show_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Image.asset("asset/-MOTOR-.png"),),
          title: const Text("UI Basic"),
          backgroundColor: Colors.green[600],
        ),
        body: Column(
          children: const [
           ShowDialog(),
           ShowSnackbar(),
          ],
        ),
      ),
    );
  }
}







