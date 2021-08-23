import 'package:flutter/material.dart';
import 'package:reborn_demo/home.dart';

void main() {
  runApp(
    App(),
  );
}

class App extends StatefulWidget {
  const App({
    Key key,
  }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
      theme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.pink,
        scaffoldBackgroundColor: Colors.red,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red,
          shadowColor: Colors.transparent,
        ),
      ),
    );
  }
}
