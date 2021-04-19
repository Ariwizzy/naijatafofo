import 'package:flutter/material.dart';
import 'package:superlegit_app/Widgets/web_view.dart';

class List extends StatelessWidget {
  static const RouteName = "list";
  @override
  Widget build(BuildContext context) {
    return WebViewClass(
        text: "Lists",
        url: "https://naijatatafoblog.com/category/lists/",
        color: const Color(0xff333333),
        loadingColor: const Color(0xff333333),);
  }
}
