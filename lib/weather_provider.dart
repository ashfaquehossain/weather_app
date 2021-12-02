
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:weather_app/model/weather_response.dart';

class WeatherProvider extends ChangeNotifier{

  late MainWeatherResponse _mainWeatherResponse;

  MainWeatherResponse get getMainWeatherData=> _mainWeatherResponse;

  Future<void> getCurrentWeatherInfo() async{
    String url = "api.openweathermap.org/data/2.5/weather?q=Chittagong&appid=ae17a3e8c84aa766709926a3750d98c6";
    final response = await http.get(Uri.parse(url));
    final map= jsonDecode(response.body);

    _mainWeatherResponse= MainWeatherResponse.fromMap(map);
    notifyListeners();
  }
}