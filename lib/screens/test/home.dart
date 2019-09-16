import 'dart:convert';

import 'package:book_itech/screens/admin.dart';
import 'package:book_itech/screens/api.dart';

import 'package:flutter/material.dart';
import './api.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Explicit
  Color myColor = Colors.blue.shade900;
  String apiUrl = Api.url;
  String msgError = "";

  getApi(String Username, String Password) async {
    final res = await http
        .post(apiUrl, body: {"user": Username, "pass": Password});
    final data =jsonDecode(res.body);

    if (data['Status'] == "A") {
      print(data['msg'] + " dan Status : " + data['Status']);
      Navigator.of(context).push(MaterialPageRoute(
          builder: (c) => AdminPage(user_name: data['user_name'])));

      _username.clear();
      _password.clear();
      setState(() {
        msgError = "";
      });
    } else {
      setState(() {
        msgError = "User หรือ Password ไม่ถูกต้องครับ";
      });
    }
  }

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  // Method

  Widget build(BuildContext context) {
    return Scaffold(
       
        body: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/book.jpg'),fit: BoxFit.cover,),),
          padding: EdgeInsets.all(35.0),
          child: Center(
            child: ListView(
              children: 
              <Widget>[  SizedBox(
               width: 100.0,
               height: 150,
               child: Image.asset('images/logo.png'),
          
                ),
                 SizedBox(
                  height: 80.0,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.grey[350], Colors.grey[350],Colors.grey[350]]),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: TextField(
                    
                    controller: _username,
                     
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        //labelText: "Username",
                        hintText: "Username"),
                  ),
                ),
                
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.grey[350], Colors.grey[350],Colors.grey[350]]),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: TextField(
                    controller: _password,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        
                        //labelText: "Password",
                        hintText: "Password"),
                  ),
                ),

                
                SizedBox(
                  height: 30.0,
                ),
                Material(
                  
                  borderRadius: BorderRadius.circular(60.0),
                 
                  color: Colors.green.shade400,
                  child: MaterialButton(
                    onPressed: () {
                      getApi(_username.text, _password.text);
                    },
                     padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.5),
                     textColor: Colors.white,
                    child: const Text("LOGIN"),
                  ),
                ),
 
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: Text(msgError,
                      style: TextStyle(color: Colors.red.shade900)),
                )
              ],
            ),
          ),
        )
        
        );
  }
}

