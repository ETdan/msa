import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // void _openWebView(BuildContext context, String initialUrl) {
  //   Navigator.pushNamed(context, '/webview',
  //       arguments: {'initialUrl': initialUrl});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Navigate to '/webview' when the first item is tapped
                Navigator.pushNamed(context, '/webview');
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Add your desired action for the second item
              },
            ),
            // Add more ListTile items as needed
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
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
                Navigator.pushNamed(context, '/webview', arguments: {
                  'initialUrl': "https://vidsrc.to/embed/movie/787699"
                });
              },
              child: const Text('Open WebView 2'),
            ),
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
                Navigator.pushNamed(context, '/webview', arguments: {
                  'initialUrl': "https://vidsrc.to/embed/movie/872585"
                });
                // _openWebView(context, "https://vidsrc.to/embed/movie/872585");
              },
              child: const Text('Open WebView'),
            ),
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
                Navigator.pushNamed(context, '/webview', arguments: {
                  'initialUrl': "https://vidsrc.to/embed/movie/872585"
                });
                // _openWebView(context, "https://vidsrc.to/embed/movie/872585");
              },
              child: const Text('Open WebView'),
            ),
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
                Navigator.pushNamed(context, '/webview', arguments: {
                  'initialUrl': "https://vidsrc.to/embed/movie/872585"
                });
                // _openWebView(context, "https://vidsrc.to/embed/movie/872585");
              },
              child: const Text('Open WebView'),
            ),
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
                Navigator.pushNamed(context, '/webview', arguments: {
                  'initialUrl': "https://vidsrc.to/embed/movie/872585"
                });
                // _openWebView(context, "https://vidsrc.to/embed/movie/872585");
              },
              child: const Text('Open WebView'),
            ),
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
                Navigator.pushNamed(context, '/webview', arguments: {
                  'initialUrl': "https://vidsrc.to/embed/movie/872585"
                });
                // _openWebView(context, "https://vidsrc.to/embed/movie/872585");
              },
              child: const Text('Open WebView'),
            ),
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
                Navigator.pushNamed(context, '/webview', arguments: {
                  'initialUrl': "https://vidsrc.to/embed/movie/872585"
                });
                // _openWebView(context, "https://vidsrc.to/embed/movie/872585");
              },
              child: const Text('Open WebView'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/webview', arguments: {
                  'initialUrl': "https://vidsrc.to/embed/movie/872585"
                });
                // _openWebView(context, "https://vidsrc.to/embed/movie/872585");
              },
              child: const Text('Open WebView'),
            ),
          ],
        ),
      ),
    );
  }
}
