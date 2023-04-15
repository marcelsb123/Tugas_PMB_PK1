import 'package:flutter/material.dart';
import 'package:tugas_pbm_pertemuan_6/page/home_page.dart';
import 'package:tugas_pbm_pertemuan_6/page/login_page.dart';
import 'package:tugas_pbm_pertemuan_6/page/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/register": (context) => MyCustomForm(),
        "/login": (context) =>
            LoginPage(username: username, password: password),
        "/home": (context) => HomePage(username: username),
        // TODO : Tambahkan route lain
      },
      initialRoute: "/login",
    );
  }
}
