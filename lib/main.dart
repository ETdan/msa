import 'package:flutter/material.dart';
import 'package:vid/home_page.dart';
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
        '/': (context) => const HomePage(),
        '/webview': (context) => const WebViewPage(
              initialUrl: "https://vidsrc.to/embed/movie/787699",
            ),
        // '/webview2': (context) => WebViewPage(
        //       initialUrl: "https://vidsrc.to/embed/movie/872585",
        //     ),
      },
    );
  }
}
