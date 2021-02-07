import 'package:flutter/material.dart';
import 'package:xercise/pages/components/profile.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int index = 1;


  @override
  Widget build(BuildContext context) {

    Widget child;
    switch (index) {
      case 0:
        child = Profile();
        break;
      case 1:
        child = Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                color: Colors.deepOrangeAccent,
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/bookFacility');
                },
                child: Text("Book Facility", style: TextStyle(color: Colors.white),),
              ),
              FlatButton(
                color: Colors.deepOrangeAccent,
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/findFriend');
                },
                child: Text("Find A Friend", style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        );
        break;
      case 2:
        child = Profile();

    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Xercise"),
        actions: [
          TextButton(
            child: Text("Logout"),
            onPressed: () {
              showDialog(context: context, child:
              new AlertDialog(
                title: new Text("Logout?"),
                actions: [
                  FlatButton(onPressed: () {Navigator.of(context).pushReplacementNamed('/home');}, child: Text("Yes")),
                  FlatButton(onPressed: () {Navigator.pop(context);}, child: Text("No")),
                ],
              )
              );
            },
          )
        ],
      ),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.white,
        currentIndex: index,
        onTap: (int index) { setState((){ this.index = index; }); },
        backgroundColor: Colors.black26,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History')

        ],
      ),
    );
  }
}
