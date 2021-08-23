import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather forecast"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Column(
          children: [
            _currentCity(),
          ],
        ),
      ),
    );
  }
}

TextField _currentCity() {
  return TextField(
    decoration: InputDecoration(
      hintText: "Enter city name",
      icon: Icon(
        Icons.search,
        color: Colors.white,
      ),
      border: InputBorder.none,
      hintStyle: TextStyle(
        color: Colors.white,
      ),
    ),
    strutStyle: StrutStyle(height: 0),
  );
}
