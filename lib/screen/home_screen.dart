import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = 'https://goodjin92.github.io/';

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("GOODJIN92.note"),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {
                  if (controller == null) {
                    return;
                  }
                  controller!.loadUrl(homeUrl);
                },
                icon: Icon(Icons.home))
          ],
        ),
        body: SafeArea(
          child: WebView(
            onWebViewCreated: (WebViewController controller) {
              this.controller = controller;
            },
            initialUrl: homeUrl,
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ));
  }
}
