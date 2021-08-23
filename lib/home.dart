import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
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
        child: Center(
          child: Column(
            children: [
              _currentCity(),
              const SizedBox(height: 48.0),
              _cityDetails(),
              const SizedBox(height: 48.0),
              _temperatureDetails(),
              const SizedBox(height: 48.0),
            ],
          ),
        ),
      ),
    );
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
    );
  }

  Column _cityDetails() {
    return Column(
      children: [
        Text(
          "Olkhon Island, RU",
          style: Theme.of(context).textTheme.headline4.copyWith(
                color: Colors.white,
              ),
        ),
        Text(
          "Monday, Aug 23, 2021",
          style: Theme.of(context).textTheme.subtitle1.copyWith(
                color: Colors.white,
              ),
        ),
      ],
    );
  }

  Row _temperatureDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.wb_sunny,
          size: 64,
        ),
        const SizedBox(
          width: 16.0,
        ),
        Column(
          children: [
            Text(
              "14 C",
              style: Theme.of(context).textTheme.headline4.copyWith(
                    color: Colors.white,
                  ),
            ),
            Text(
              "Sunny".toUpperCase(),
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
