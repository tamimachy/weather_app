import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather_response.dart';

class WeatherProvider with ChangeNotifier{
  late MainWeatherResponse _mainWeatherResponse;

  MainWeatherResponse get getMainWeatherData=>_mainWeatherResponse;
  Future<void>getCurrentWeatherInfo() async{
    String url = "https://api.openweathermap.org/data/2.5/weather?q=London&appid=6b3e9eea2d17bbd951cbdeacec45b84e";
    final response = await http.get(Uri.parse(url));
    final map = jsonDecode(response.body);
    _mainWeatherResponse = MainWeatherResponse.fromMap(map);
    notifyListeners();
  }
}