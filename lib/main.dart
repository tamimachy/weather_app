import 'package:flutter/material.dart';

import 'home_page.dart';

import 'weather_provider.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather App",
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}
