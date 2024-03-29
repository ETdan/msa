import 'package:flutter/material.dart';
import 'package:vid/home_page.dart';
import 'package:vid/login_page.dart';
import 'package:vid/movie_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/webview': (context) => const WebViewPage(),
      },
    );
  }
}
