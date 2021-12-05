import 'package:flutter/material.dart';

import 'current_weather.dart';
import 'forcast_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Weather AppBar"),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
            bottom: TabBar(
              tabs: [
                Text('Tab 1'),
                Text('Tab 2')
              ],
            ),
          ),
          body: TabBarView(
            children: [
              CurrentWeather(),
              ForcastWeather()
            ],
          ),
        ));
  }
}
