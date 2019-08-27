import 'package:book_itech/screens/home.dart';
import 'package:flutter/material.dart';

class MyService extends StatefulWidget {
  @override
  _MyServiceState createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
  // Explicit

  Color myColor = Colors.blue.shade900;
  double mySizeIcon = 36.0;
  double h2 = 18.0;

  // Method
  Widget showLogo() {
    return Container(
        width: 80.0,
        height: 50.0,
        child: ListTile(
          leading: ImageIcon(
            AssetImage('images/logo.png'),
            size: 36.0,
            color: myColor,
          ),
        ));
  }

  Widget showAppName() {
    return Text(
      'BOOK ITECH',
      style: TextStyle(
        fontSize: 30.0,
        color: myColor,
        fontFamily: 'Cinzel',
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget showLogin() {
    return Text(
      'Login by ... ',
      style: TextStyle(fontSize: 16.0, color: Colors.orange.shade700),
    );
  }

  Widget signOutMenu() {
    return ListTile(
      leading: Icon(
        Icons.cached,
        size: mySizeIcon,
      ),
      title: Text(
        'Sign Out',
        style: TextStyle(fontSize: h2),
      ),
      onTap: () {
        processSignOut();
      },
    );
  }

  Future<void> processSignOut() async {
    MaterialPageRoute materialPageRoute =
        MaterialPageRoute(builder: (BuildContext context) => Home());
    Navigator.of(context)
        .pushAndRemoveUntil(materialPageRoute, (Route<dynamic> route) => false);
  }

  Widget myHeadDrawer() {
    return DrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/book.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        children: <Widget>[
          showLogo(),
          showAppName(),
          showLogin(),
        ],
      ),
    );
  }

  Widget myDrewerMenu() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          myHeadDrawer(),
          signOutMenu(),
        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Service'),
      ),
      drawer: myDrewerMenu(),
    );
  }
}
