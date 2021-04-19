import 'package:flutter/material.dart';
import 'package:superlegit_app/Widgets/web_view.dart';

class BBC extends StatelessWidget {
  static const RouteName = "bbc";
  @override
  Widget build(BuildContext context) {
    return WebViewClass(
        text: "History",
        url: "https://naijatatafoblog.com/category/history/",
        color: Color(0xff333333),
        loadingColor: Color(0xff333333),);
  }
}
