import 'package:flutter/material.dart';

/// ADBanner
class BannerWidget extends StatelessWidget {
  final String adUrl;

  BannerWidget(this.adUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(adUrl),
    );
  }
}
