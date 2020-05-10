import 'package:flutter/material.dart';

import '../services/location.dart';
import '../services/weather.dart';
import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();
    navigateNext(weatherData);
  }

  void navigateNext(dynamic data) {
    var route = MaterialPageRoute(builder: (context) => LocationScreen(data));
    Navigator.push(context, route);
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
