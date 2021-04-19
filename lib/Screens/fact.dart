import 'package:flutter/material.dart';
import 'package:superlegit_app/Widgets/web_view.dart';


class CNN extends StatelessWidget {
  static const RouteName = "cnn";
  @override
  Widget build(BuildContext context) {
    return WebViewClass(
        text: "Facts",
        url: "https://naijatatafoblog.com/category/facts/",
        color: Color(0xff333333),
        loadingColor: Color(0xff333333),);
  }
}
