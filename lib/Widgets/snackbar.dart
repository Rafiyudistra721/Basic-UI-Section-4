import 'package:flutter/material.dart';

class ShowSnackbar extends StatefulWidget {
  const ShowSnackbar({
    super.key,
  });

  @override
  State<ShowSnackbar> createState() => _ShowSnackbarState();
}

class _ShowSnackbarState extends State<ShowSnackbar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text("Halooo"),
                duration: const Duration(seconds: 2),
                margin: const EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                action: SnackBarAction(
                  label: "Cancel",
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Barang tidak jadi dihapus"),
                        duration: Duration(seconds: 2),
                        margin: EdgeInsets.all(20),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25)))));
                  },
                ),
              ),
            );
          },
          child: const Text("Show Snackbar")),
    );
  }
}
