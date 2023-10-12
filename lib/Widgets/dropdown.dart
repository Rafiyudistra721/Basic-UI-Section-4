import 'package:flutter/material.dart';

class ShowDropdown extends StatefulWidget {
  const ShowDropdown({
    super.key,
  });

  @override
  State<ShowDropdown> createState() => _ShowDropdownState();
}

class _ShowDropdownState extends State<ShowDropdown> {
  final List data = [
    {"Judul":"Menu 1", "Data":1},
    {"Judul":"Menu 2", "Data":2},
    {"Judul":"Menu 3", "Data":3},
    {"Judul":"Menu 4", "Data":4}
  ];

late int menuawal;

@override
  void initState() {
    menuawal = data[1]["Data"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: menuawal,
      items: data
          .map(
            (e) => DropdownMenuItem(
              value: e["Data"] as int,
              child: Text("${e["Judul"]}"),
            ),
          )
          .toList(),
      onChanged: (value) {
        setState(() {
          menuawal = value!;
        });
      },
    );
  }
}