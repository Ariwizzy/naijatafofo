import 'package:flutter/material.dart';
import 'package:superlegit_app/Widgets/web_view.dart';

class NairaLand extends StatelessWidget {
  static const RouteName = "nairaland";
  @override
  Widget build(BuildContext context) {
    return WebViewClass(
        text: "Life Hack",
        url: "https://naijatatafoblog.com/category/life-hacks/",
        color: const Color(0xff333333),
        loadingColor: const Color(0xff333333),);
  }
}
