import 'package:flutter/material.dart';
import 'package:xercise/pages/bookFacility.dart';
import 'package:xercise/pages/findFriend.dart';
import 'package:xercise/pages/login.dart';
import 'package:xercise/pages/mainPage.dart';
import 'package:xercise/pages/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartScreen(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => new Login(),
        '/home' : (BuildContext context) => new StartScreen(),
        '/register' : (BuildContext context) => new Register(),
        '/mainPage' : (BuildContext context) => new MainPage(),
        '/bookFacility': (BuildContext context) => new BookFacility(),
        '/findFriend': (BuildContext context) => new FindFriend()
      },
    );
  }
}

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(child: Text("Xercise", style: TextStyle(color: Colors.white, fontSize: 80))),
          Center(child: Image.asset('assets/flamebasketball.gif', scale: 1.8)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonTheme(
                minWidth: 100,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                  ),
                  color: Colors.deepOrangeAccent,
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/login');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
              ),
              ButtonTheme(
                minWidth: 100,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                  ),
                  color: Colors.deepOrangeAccent,
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/register');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Register", style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


