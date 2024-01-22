import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key});

  @override
  State<WebViewPage> createState() => WebViewPageState();
}

// const html_string ='<iframe width="420" height="345" src="https://vidsrc.to/embed/movie/872585"></iframe>';

class WebViewPageState extends State<WebViewPage> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    // ..loadHtmlString(html_string);
    ..loadRequest(
      // Uri.parse("https://vidsrc.to/embed/movie/tt17048514"),
      Uri.parse("https://vidsrc.to/embed/movie/872585"),
      headers: {
        'User-Agent':
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
      },
    );

  // ..loadRequest(Uri.parse("https://www.google.com/"));
  // ..loadRequest(Uri.parse("https://fmoviesz.to/tv/the-big-bang-theory-jjq14/2-6"));
  // ..loadHtmlString(html_string);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {
          // Navigate to the second page
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => WebViewWidget(controller: controller)),
          );
        },
        child: Text('Navigate to Second Page'),
      ),
    );
  }
}
