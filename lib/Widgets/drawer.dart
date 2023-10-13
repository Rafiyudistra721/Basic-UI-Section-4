import 'package:flutter/material.dart';
import '../pages/login_page.dart';

class ShowDrawer extends StatefulWidget {
  const ShowDrawer({
    super.key,
  });

  @override
  State<ShowDrawer> createState() => _ShowDrawerState();
}

class _ShowDrawerState extends State<ShowDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 200,
            color: Colors.green[600],
            child: const Text(
              "Q Store",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: "Oxygen",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 548,
            width: 305,
            child: ListView(
              children: [
                const ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Pengaturan"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                  },
                  leading: const Icon(Icons.login),
                  title: const Text("Login"),
                ),
                const ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
