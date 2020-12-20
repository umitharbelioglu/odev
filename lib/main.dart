import 'package:flutter/material.dart';

import 'login.dart';
import 'anasayfa.dart';
import 'uyeol.dart';
import 'sifremiunuttum.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/anasayfa': (context) => Anasayfa(),
        '/uyeol': (context) => Uyeol(),
        '/sifremiunuttum': (context) => Sifremiunuttum(),
        '/vazgec': (context) => LoginPage(),
        '/sifresıfırlamakodugonder': (context) => LoginPage(),
      },
    );
  }
}