import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class WeatherProvider extends ChangeNotifier{
  Future<void> getWeatherInfo() async{
    http.get(Uri.parse(""));
  }
}