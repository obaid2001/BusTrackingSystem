import 'package:flutter/material.dart';

class SignupPageDriver extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPageDriver> {
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
                      child: Text("SIGN UP DRIVER",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold)))
                ]),
              ),
              Container(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 30),
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
                      decoration: InputDecoration(
                          labelText: 'Contact Number',
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
                          labelText: 'NIC Number',
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
                          labelText: 'Vehicle Registration No',
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
                          labelText: 'Vehicle Type',
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
                                onTap: () {},
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
                    SizedBox(
                      height: 15,
                    ),
                  ]))
            ]));
  }
}
