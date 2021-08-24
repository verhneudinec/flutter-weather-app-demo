import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:reborn_demo/settings.dart';

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
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Route route = MaterialPageRoute(
              //   builder: (context) => SettingsScreen(),
              // );
              // Navigator.of(context).push(route);

              Navigator.pushNamed(
                context,
                '/settings',
                arguments: "test string from pushNamed",
              );
            },
          ),
        ],
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
              _extraWeatherDetails(),
              const SizedBox(height: 48.0),
              _weekWeather(),
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
              "36 C",
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

  Row _extraWeatherDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.wb_sunny),
            Text("3 m/s"),
          ],
        ),
        Column(
          children: [
            Icon(Icons.wb_sunny),
            Text("717 mm of merc."),
          ],
        ),
        Column(
          children: [
            Icon(Icons.wb_sunny),
            Text("69%"),
          ],
        ),
      ],
    );
  }

  Widget _weekWeather() {
    return Column(
      children: [
        Text(
          "Weather for the week".toUpperCase(),
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.w300,
              ),
        ),
        LimitedBox(
          maxHeight: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for (int i = 0; i < 6; i++)
                Container(
                  margin: EdgeInsets.only(
                    top: 16.0,
                    right: 16.0,
                  ),
                  width: 100.0,
                  height: 80.0,
                  color: Colors.white.withOpacity(0.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Test"),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("27 C"),
                          const SizedBox(
                            width: 16.0,
                          ),
                          Icon(
                            Icons.wb_cloudy,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
