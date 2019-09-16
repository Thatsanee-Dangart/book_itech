import 'package:flutter/material.dart';


class AdminPage extends StatefulWidget {
  
  final String user_name ;
  AdminPage({this.user_name});


  @override
  _AdminPageState createState() => _AdminPageState();
  

}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("ยินดีต้อนรับ "),
          backgroundColor: Colors.pink,
          elevation: 0.5),
      body: Center(
      ),
    );
  }
}