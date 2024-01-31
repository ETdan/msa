import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({
    Key? key,
  }) : super(key: key);

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController _webViewController;

  @override
  void initState() {
    super.initState();
    _webViewController = WebViewController();
    _webViewController.setJavaScriptMode(JavaScriptMode.unrestricted);
    _webViewController.setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          // if (request.url.startsWith('https://vidsrc.to/embed/movie')) {
          if (request.url.startsWith('https://vidsrc.to/embed/movie')) {
            return NavigationDecision.navigate;
          }
          return NavigationDecision.prevent;
        },
      ),
    );
  }

  bool isAppBarPurple = false;
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    // Displaying the passed arguments in a text field
    final String initialUrl = args?['initialUrl'] ?? 'No message passed';

    _webViewController.loadRequest(
      Uri.parse(initialUrl),
      headers: {
        'User-Agent':
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(initialUrl),
        // title: const Text("Enjoy"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () async {
            if (await _webViewController.canGoBack()) {
              _webViewController.goBack();
            } else {
              Navigator.pop(context);
            }
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              setState(() {
                // Toggle the color of the AppBar
                isAppBarPurple = !isAppBarPurple;
              });
            },
          ),
        ],
        backgroundColor: isAppBarPurple ? Colors.purple : null,
      ),
      body: WebViewWidget(controller: _webViewController),
    );
  }
}
