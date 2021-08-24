import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String gradeDropdownValue = '°C';

  @override
  Widget build(BuildContext context) {
    final RouteSettings routeSettings = ModalRoute.of(context).settings;
    final stringFromPushNamed = routeSettings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Temperature in"),
                DropdownButton<String>(
                  value: gradeDropdownValue,
                  items: <String>['°C', '°F'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String value) {
                    setState(() {
                      gradeDropdownValue = value;
                    });
                  },
                ),
              ],
            ),
            const Divider(),
            Text(stringFromPushNamed),
          ],
        ),
      ),
    );
  }
}
