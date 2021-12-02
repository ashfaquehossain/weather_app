import 'package:flutter/material.dart';
import 'package:weather_app/home_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WeatherApp" ,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: HomePage(),
    );
  }
}
