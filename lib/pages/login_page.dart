import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Oxygen"),
      debugShowCheckedModeBanner: false,
      home: const LoginWidget(),
    );
  }
}

class LoginWidget extends StatefulWidget {
  const LoginWidget({
    super.key,
  });

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 160.0),
            child: Center(
              child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset('assets/images/-MOTOR-.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(29)),
                child: const Center(
                  child: Text("Q Store",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontFamily: "Oxygen",
                          fontWeight: FontWeight.bold)),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: TextField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.alternate_email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  labelText: "E-mail",
                  hintText: "Masukkan E-mail yang valid"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: TextField(
              autocorrect: false,
              obscureText: isHidden,
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (isHidden == true) {
                        isHidden = false;
                      } else {
                        isHidden = true;
                      }
                      setState(() {});
                    },
                    icon: const Icon(Icons.remove_red_eye),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  labelText: "Password",
                  hintText: "Masukkan Password"),
            ),
          ),
          TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Sandi anda telah diubah, silakan login"),
                duration: Duration(seconds: 2),
                margin: EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
              ));
            },
            child: const Text(
              "Lupa Password? Klik Disini",
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 180,
            decoration: BoxDecoration(
                color: Colors.cyanAccent,
                borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Text(
                "LOGIN",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Akun Berhasil Dibuat, silakan login"),
                  duration: Duration(seconds: 2),
                  margin: EdgeInsets.all(20),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ));
              },
              child: const Text("Tidak Punya Akun? Buat Disini"))
        ])));
  }
}
