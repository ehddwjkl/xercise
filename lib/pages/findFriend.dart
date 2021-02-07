import 'package:flutter/material.dart';

class FindFriend extends StatefulWidget {
  @override
  _FindFriendState createState() => _FindFriendState();
}

class _FindFriendState extends State<FindFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Find A Friend"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/mainPage');
          },
        ),
      ),
    );
  }
}
