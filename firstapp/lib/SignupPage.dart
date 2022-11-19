import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

// controllers for options in sign up page
class _SignupPageState extends State<SignupPage> {
  final TextEditingController _fullnamecontroller = TextEditingController();
  final TextEditingController _useridcontroller = TextEditingController();
  final TextEditingController _phonenocontroller = TextEditingController();
  final TextEditingController _addresscontroller = TextEditingController();
  final TextEditingController _Passwordcontroller = TextEditingController();

  late bool _sucess;
  late String _userid;

  void _register() async {
    final User user = (await _auth.createUserWithEmailAndPassword(
            email: _useridcontroller.text, password: _Passwordcontroller.text))
        .user;

    if (user != null) {
      setState(() {
        _sucess = true;
        _userid = user.email;
      });
    } else {
      setState(() {
        _sucess = false;
        _userid = user.email;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(children: <Widget>[
                  Container(
                      padding: EdgeInsets.fromLTRB(15, 75, 0, 0),
                      child: Text("SIGN UP STUDENT",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold)))
                ]),
              ),
              Container(
                  padding: EdgeInsets.only(top: 35, left: 20, right: 30),
                  child: Column(children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Full Name',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 169, 240, 172)),
                          )),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: _useridcontroller,
                      decoration: InputDecoration(
                          labelText: 'User Id',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          )),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Contact Number',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 169, 240, 172)),
                          )),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Residential Address',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 169, 240, 172)),
                          )),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: _Passwordcontroller,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 169, 240, 172)),
                          )),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        height: 40,
                        child: Material(
                            borderRadius: BorderRadius.circular(15.0),
                            shadowColor: Colors.greenAccent,
                            color: Colors.black,
                            elevation: 7,
                            child: GestureDetector(
                                onTap: () async {
                                  _register();
                                },
                                child: Center(
                                    child: Text("SIGN UP",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Montserrat")))))),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("GO BACK",
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  )))
                        ]),
                  ])),
            ]));
  }
}
