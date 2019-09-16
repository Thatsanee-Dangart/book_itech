import 'package:book_itech/screens/add_user.dart';
import 'package:book_itech/screens/home.dart';
import 'package:book_itech/screens/list_product.dart';
import 'package:book_itech/screens/scan_file.dart';
import 'package:book_itech/screens/show_book.dart';
import 'package:book_itech/screens/show_call.dart';
import 'package:book_itech/screens/show_notification.dart';
import 'package:book_itech/screens/upload_file.dart';
import 'package:flutter/material.dart';

class MyService extends StatefulWidget {

  final String user_name;
  MyService({this.user_name});

  
  @override
  _MyServiceState createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
  // Explicit

  Color myColor = Colors.blue.shade900;
  Color mySignout = Colors.red.shade900;
  double mySizeIcon = 36.0;
  double h2 = 18.0;
  Widget myWidget = ListProduct(); //import  ListProduct
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
        color: mySignout,
      ),
      title: Text(
        'ออกจากระบบ',
        style: TextStyle(
          fontSize: h2,
          color: mySignout,
          fontWeight: FontWeight.bold,
          fontFamily: 'Maitree',
        ),
      ),
      onTap: () {
        processSignOut();
      },
    );
  }

  Widget listProductMenu() {
    return ListTile(
      leading: Icon(
        Icons.face,
        size: mySizeIcon,
        color: myColor,
      ),
      title: Text(
        'ข้อมูลส่วนตัว',
        style: TextStyle(
          fontSize: h2,
          color: myColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'Maitree',
        ),
      ),
      // subtitle: Text(''),
      onTap: () {
        print("Clicked");
        Navigator.pop(context);
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => new ListProduct()));
      },
    );
  }

  Widget addUser() {
    return ListTile(
      leading: Icon(
        Icons.add_circle_outline,
        size: mySizeIcon,
        color: myColor,
      ),
      title: Text(
        'เพิ่มข้อมูลสมาชิก',
        style: TextStyle(
          fontSize: h2,
          color: myColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'Maitree',
        ),
      ),
      // subtitle: Text(''),
      onTap: () {
        setState(() {
          myWidget = AddUser();
          Navigator.of(context).pop();
        });
      },
    );
  }

  Widget showBook() {
    return ListTile(
      leading: Icon(
        Icons.library_books,
        size: mySizeIcon,
        color: myColor,
      ),
      title: Text(
        'หนังสือราชการ',
        style: TextStyle(
          fontSize: h2,
          color: myColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'Maitree',
        ),
      ),
      // subtitle: Text(''),
      onTap: () {
        setState(() {
          myWidget = ShowBook();
          Navigator.of(context).pop();
        });
      },
    );
  }

  Widget uploadFile() {
    return ListTile(
      leading: Icon(
        Icons.cloud_upload,
        size: mySizeIcon,
        color: myColor,
      ),
      title: Text(
        'อัพโหลดไฟล์',
        style: TextStyle(
          fontSize: h2,
          color: myColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'Maitree',
        ),
      ),
      // subtitle: Text(''),
      onTap: () {
        setState(() {
          myWidget = UploadFile();
          Navigator.of(context).pop();
        });
      },
    );
  }

  Widget scanFile() {
    return ListTile(
      leading: Icon(
        Icons.settings_overscan,
        size: mySizeIcon,
        color: myColor,
      ),
      title: Text(
        'แสกนไฟล์',
        style: TextStyle(
          fontSize: h2,
          color: myColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'Maitree',
        ),
      ),
      // subtitle: Text(''),
      onTap: () {
        setState(() {
          myWidget = ScanFile();
          Navigator.of(context).pop();
        });
      },
    );
  }

  Widget showNotification() {
    return ListTile(
      leading: Icon(
        Icons.notification_important,
        size: mySizeIcon,
        color: myColor,
      ),
      title: Text(
        'การแจ้งเตือน',
        style: TextStyle(
          fontSize: h2,
          color: myColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'Maitree',
        ),
      ),
      // subtitle: Text(''),
      onTap: () {
        setState(() {
          myWidget = ShowNotification();
          Navigator.of(context).pop();
        });
      },
    );
  }

  Widget showCall() {
    return ListTile(
      leading: Icon(
        Icons.contact_phone,
        size: mySizeIcon,
        color: myColor,
      ),
      title: Text(
        'ติดต่อ',
        style: TextStyle(
          fontSize: h2,
          color: myColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'Maitree',
        ),
      ),
      // subtitle: Text(''),
      onTap: () {
        setState(() {
          myWidget = ShowCall();
          Navigator.of(context).pop();
        });
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
          listProductMenu(),
          addUser(),
          showBook(),
          uploadFile(),
          scanFile(),
          showNotification(),
          showCall(),
          signOutMenu(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BOOK ITECH'),
      ),
      drawer: myDrewerMenu(),
    );
  }
}
