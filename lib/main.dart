import 'package:book_itech/screens/screens/authen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);//การหมุนจอ
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Authen(),
    );
  }
}
