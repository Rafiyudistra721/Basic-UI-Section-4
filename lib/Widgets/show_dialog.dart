import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context, 
            builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              title: const Text("JUDUL"),
              content: const Text("Alamak"),
            ),);
        }, 
        child: const Text("Show Dialog"))
	);
  }
}