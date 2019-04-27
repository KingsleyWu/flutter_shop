import 'package:flutter/material.dart';
import 'package:flutter_shop/common/utils/log_util.dart';
import 'package:flutter_shop/pages/index_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    L.init(isDebug:true);
    return MaterialApp(
      title: '星光在线',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: IndexPage()
    );
  }
}

