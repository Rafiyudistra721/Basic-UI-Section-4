// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class BottomSheets extends StatefulWidget {
  const BottomSheets({
    super.key,
  });

  @override
  State<BottomSheets> createState() => _BottomSheetsState();
}

class _BottomSheetsState extends State<BottomSheets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              isDismissible: false,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              context: context,
              builder: (context) {
                return SizedBox(
                  height: 250,
                  child: ListView(
                    children: [
                      ListTile(
                        onTap: () => print("Open Search"),
                        leading: const Icon(Icons.search),
                        title: const Text("Pencarian"),
                      ),
                      ListTile(
                        onTap: () => print("Open Share"),
                        leading: const Icon(Icons.share),
                        title: const Text("Bagikan"),
                      ),
                      ListTile(
                        onTap: () => print("Open Add"),
                        leading: const Icon(Icons.add),
                        title: const Text("Tambah"),
                      ),
                      ListTile(
                        onTap: () => Navigator.pop(context),
                        leading: const Icon(Icons.cancel),
                        title: const Text("Batalkan"),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: const Text("Show Bottom Sheet")),
    );
  }
}
