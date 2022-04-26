// ignore_for_file: file_names, prefer_const_constructors_in_immutables, unused_field, unused_element

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ReaderScreen extends StatefulWidget {
  final int chapterID;
  ReaderScreen(this.chapterID);
  @override
  _ReaderScreenState createState() => _ReaderScreenState();
}

WebViewController _controller;

class _ReaderScreenState extends State<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter ' + widget.chapterID.toString()),
      ),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webviewController) {
          _controller = webviewController;
          _loadHtmlSEMESTER1();
        },
      ),
    );
  }
}

_loadHtmlSEMESTER1() async {
  String fileText = await rootBundle.loadString("assests/SEMESTER 1.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}

_loadHtmlSEMESTER2() async {
  String fileText = await rootBundle.loadString("assests/SEMESTER 2.html");
  _controller.loadUrl(Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString());
}
