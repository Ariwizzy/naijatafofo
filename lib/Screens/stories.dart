import 'package:flutter/material.dart';
import 'package:superlegit_app/Widgets/web_view.dart';

class Stories extends StatelessWidget {
  static const RouteName = "stories";
  @override
  Widget build(BuildContext context) {
    return WebViewClass(
        text: "Stories",
        url: "https://naijatatafoblog.com/category/stories/",
        color: const Color(0xff333333),
        loadingColor: const Color(0xff333333),);
  }
}
