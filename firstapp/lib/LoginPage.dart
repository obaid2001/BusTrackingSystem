import 'package:flutter/material.dart';
import 'SignupPage.dart';
import 'SignupPageDriver.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        // ignore: unnecessary_new
        '/signup': (BuildContext context) => new SignupPage(),
        // ignore: unnecessary_new
        '/signupdriver': (BuildContext context) => new SignupPageDriver(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                      child: Text("Hello User",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold)))
                ]),
              ),
              Container(
                  padding: EdgeInsets.only(top: 35, left: 20, right: 30),
                  child: Column(children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'USER ID',
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
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          )),
                    ),
                    SizedBox(height: 5),
                    Container(
                        alignment: Alignment(1, 0),
                        padding: EdgeInsets.only(top: 15, left: 20),
                        child: InkWell(
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )),
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
                                    child: Text("LOGIN",
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
                                Navigator.of(context).pushNamed('/signup');
                              },
                              child: Text("Register As Student",
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
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('/signupdriver');
                              },
                              child: Text("Register As Driver",
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  )))
                        ])
                  ])),
            ]));
  }
}
