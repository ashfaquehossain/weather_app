
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

class WeatherProvider extends ChangeNotifier {
  
  Future<void> getWeatherInfo() async{
    final response = await http.get(Uri.parse("api.openweathermap.org/data/2.5/weather?q=Chittagong&appid=ae17a3e8c84aa766709926a3750d98c6"));
    print(response.body);
  }
}