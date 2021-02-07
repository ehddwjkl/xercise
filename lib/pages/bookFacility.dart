import 'package:flutter/material.dart';
import 'package:xercise/pages/components/sportsTiles.dart';

class BookFacility extends StatefulWidget {
  @override
  _BookFacilityState createState() => _BookFacilityState();
}

class _BookFacilityState extends State<BookFacility> {

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Book A Facility"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/mainPage');
          },
        ),
      ),
      body: SportsTiles(),
    );
  }
}
