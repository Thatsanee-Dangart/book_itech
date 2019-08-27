import 'package:book_itech/screens/my_service.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Explicit
  Color myColor = Colors.blue.shade900;

  // Method

  Widget mySizebox() {
    return SizedBox(
      width: 5.0,
      height: 16.0,
    );
  }

  Widget mySize() {
    return SizedBox(
      width: 5.0,
      height: 10.0,
    );
  }

  Widget showButton() {
    return Container(
      margin: EdgeInsets.only(left: 50.0, right: 50.0),
      child: Row(
        children: <Widget>[
          signInButton(),
          mySizebox(),
        ],
      ),
    );
  }

  Widget signInButton() {
    return Expanded(
      child: RaisedButton(
        color: myColor,
        child: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          print('You Click SingUp');

          MaterialPageRoute materialPageRoute =
              MaterialPageRoute(builder: (BuildContext context) => MyService());
          Navigator.of(context).push(materialPageRoute);
        },
      ),
    );
  }

  Widget usernameText() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.account_circle,
          size: 30.0,
          color: myColor,
        ),
        labelText: 'Username :',
        labelStyle: TextStyle(color: myColor),
      ),
      onSaved: (String value) {},
    );
  }

  Widget passwordText() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(
          Icons.lock,
          size: 30.0,
          color: myColor,
        ),
        labelText: 'Password :',
        labelStyle: TextStyle(color: myColor),
      ),
      onSaved: (String value) {},
    );
  }

  Widget showAuthen() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/logo.jpg'), fit: BoxFit.cover),
      ),
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(20.0),
        color: Color.fromRGBO(255, 255, 255, 0.7),
        width: 300.0,
        child: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              showName(),
              mySizebox(),
              mySizebox(),
              usernameText(),
              passwordText(),
              mySize(),
              showButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget showName() {
    return ListTile(
      leading: ImageIcon(
        AssetImage('images/logo.png'),
        size: 36.0,
        color: myColor,
      ),
      title: Text(
        'BOOK ITECH',
        style: TextStyle(
          fontSize: 30.0,
          color: myColor,
          fontFamily: 'Cinzel',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            showAuthen(),
          ],
        ),
      ),
    );
  }
}
