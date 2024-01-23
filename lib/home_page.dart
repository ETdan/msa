import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _openWebView(BuildContext context, String initialUrl) {
    Navigator.pushNamed(context, '/webview',
        arguments: {'initialUrl': initialUrl});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/webview', arguments: {
                  'initialUrl': "https://vidsrc.to/embed/movie/872585"
                });
                // _openWebView(context, "https://vidsrc.to/embed/movie/872585");
              },
              child: const Text('Open WebView'),
            ),
            ElevatedButton(
              onPressed: () {
                // _openWebView(context, "https://vidsrc.to/embed/movie/787699");
                Navigator.pushNamed(context, '/webview2', arguments: {
                  'initialUrl': "https://vidsrc.to/embed/movie/787699"
                });
              },
              child: const Text('Open WebView 2'),
            ),
          ],
        ),
      ),
    );
  }
}
