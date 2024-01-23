import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// class WebViewPage extends StatefulWidget {
//   const WebViewPage({Key? key, required this.initialUrl}) : super(key: key);
//   // late String initialUrl;

//   @override
//   State<WebViewPage> createState() => _WebViewPageState();
// }

// class _WebViewPageState extends State<WebViewPage> {
//   late final WebViewController _webViewController;
//   @override
//   void initState() {
//     String initialUrl = widget.initialUrl;
//     super.initState();
//     _webViewController = WebViewController();
//     // TODO: implement initState
//     _webViewController.setJavaScriptMode(JavaScriptMode.unrestricted);
//     // ..loadHtmlString(html_string);
//     _webViewController.setNavigationDelegate(
//       NavigationDelegate(
//         onProgress: (int progress) {
//           // Update loading bar.
//         },
//         onPageStarted: (String url) {},
//         onPageFinished: (String url) {},
//         onWebResourceError: (WebResourceError error) {},
//         onNavigationRequest: (NavigationRequest request) {
//           if (request.url.startsWith('https://vidsrc.to/embed/movie/') ||
//               false) {
//             return NavigationDecision.prevent;
//           }
//           return NavigationDecision.navigate;
//         },
//       ),
//     );
//     print(widget.initialUrl);
//     _webViewController.loadRequest(
//       // Uri.parse("https://vidsrc.to/embed/movie/tt17048514"),
//       // Uri.parse("https://vidsrc.to/embed/movie/787699"),
//       Uri.parse(widget.initialUrl),
//       headers: {
//         'User-Agent':
//             'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("initialUrl"),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () async {
//             if (await _webViewController.canGoBack()) {
//               _webViewController.goBack();
//             } else {
//               Navigator.pop(context);
//             }
//           },
//         ),
//       ),
//       body: WebViewWidget(controller: _webViewController),
//     );
//   }
// }
class WebViewPage extends StatefulWidget {
  final String initialUrl;
  const WebViewPage({Key? key, required this.initialUrl}) : super(key: key);

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController _webViewController;

  @override
  void initState() {
    super.initState();
    _webViewController = WebViewController();
    // TODO: implement initState
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
          if (request.url.startsWith('https://vidsrc.to/embed/movie/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    );
    print(widget.initialUrl);
    _webViewController.loadRequest(
      Uri.parse(widget.initialUrl),
      headers: {
        'User-Agent':
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.initialUrl),
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
      ),
      body: WebViewWidget(controller: _webViewController),
    );
  }
}
