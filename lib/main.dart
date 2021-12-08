import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/model/weather_response.dart';
import 'package:weather_app/weather_ui_design.dart';
import 'weather_provider.dart';
import 'home_page.dart';
import 'ui_design.dart';

import 'weather_provider.dart';

void main(){
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (contex)=>WeatherProvider()),
      ],
      child: MyApp(),
    )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: UI(),
    );
  }
}
