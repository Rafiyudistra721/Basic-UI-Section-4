import 'package:flutter/material.dart';
import '../Widgets/listview_box.dart';
import '../Widgets/snackbar.dart';
import '../Widgets/show_dialog.dart';
import '../Widgets/dropdown.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Image.asset("asset/images/-MOTOR-.png"),
        ),
        title: const Text("UI Basic"),
        backgroundColor: Colors.green[600],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 30, top: 20),
                    child: ShowDropdown())),
            Container(
              height: 140,
              margin: const EdgeInsets.only(left: 20, top: 20),
              child: ListView.builder(
                itemCount: 25,
                itemBuilder: (context, index) =>
                    ListviewBox(text: "Box ${index + 1}"),
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const ShowDialog(),
            const SizedBox(
              height: 30,
            ),
            const ShowSnackbar(),
          ],
        ),
      ),
    );
  }
}
