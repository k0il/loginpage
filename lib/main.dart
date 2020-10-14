import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/background.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 100.0),
                child: Center(
                  child: new Image.asset(
                    'assets/logo.png',
                    width: 100,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50.0),
                child: Center(
                  child: new Text(
                    "Title Application",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontFamily: 'ralewaymedium'),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50.0),
                child: Card(
                  margin: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        padding:
                            EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          autofocus: true,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              hintText: 'Email',
                              contentPadding:
                                  EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.security),
                              hintText: 'Password',
                              contentPadding:
                                  EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            bottom: 20.0, left: 20.0, right: 20.0),
                        child: new Align(
                            alignment: Alignment.centerRight,
                            child: new Text(
                              "Forgot Password",
                              style: TextStyle(color: Colors.redAccent),
                            )),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            bottom: 20.0, left: 20.0, right: 20.0),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 42.0,
                          onPressed: () {
                            null;
                          },
                          color: Colors.redAccent,
                          child: Text("Log In",
                              style: TextStyle(color: Colors.white)),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
