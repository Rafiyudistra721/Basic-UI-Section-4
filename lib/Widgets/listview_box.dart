import 'package:flutter/material.dart';

class ListviewBox extends StatefulWidget {
  const ListviewBox({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  State<ListviewBox> createState() => _ListviewBoxState();
}

class _ListviewBoxState extends State<ListviewBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.black12),
      child: Center(child: Text(widget.text)),
    );
  }
}
