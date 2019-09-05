import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  Color nameColor = Colors.green.shade400;
  Color emailColor = Colors.blue.shade400;
  Color passwordColor = Colors.pink.shade400;


   Widget nameText() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.face,
          size: 36.0,
          color: nameColor,
        ),
        labelText: 'Name :',
        labelStyle: TextStyle(color: nameColor),
        helperText: 'Type Your Display Name',
        helperStyle: TextStyle(color: nameColor),
        hintText: 'English only',
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please Fill Name in Blank';
        }
      },
      onSaved: (String value) {
       
      },
    ); //กรอกข้อมูล
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
       
        child: ListView(
          padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 70.0),
          children: <Widget>[
            nameText(),
           
          ],
        ),
      ),
    );
  }
}