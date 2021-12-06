import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/weather_provider.dart';

class CurrentWeather extends StatefulWidget {
  const CurrentWeather({Key? key}) : super(key: key);

  @override
  State<CurrentWeather> createState() => _CurrentWeatherState();
}

class _CurrentWeatherState extends State<CurrentWeather> {
  bool isLoading = true;

  void didChangeDependencies(){
    Provider.of<WeatherProvider>(context).getCurrentWeatherInfo().then((value){
      setState(() {
        isLoading = false;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(
        builder: (context, value, child) => isLoading?
        Center(child: CircularProgressIndicator(),)
            :Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                ),
                child: Text("${value.getMainWeatherData.main.temp}"),
            )
    );
  }
}
