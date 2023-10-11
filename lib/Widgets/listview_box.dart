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
      width: 200,
      height: 200,
      decoration: const BoxDecoration(  borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.black12),
      child: Center(child: Text(widget.text)),
    );
  }
}