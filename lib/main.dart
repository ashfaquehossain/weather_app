import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/home_page.dart';
import 'package:weather_app/weather_provider.dart';

void main(){
  /*runApp(const MyApp());*/
  runApp(
    MultiProvider(providers:
    [ChangeNotifierProvider(create: (context)=> WeatherProvider()),],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WeatherApp" ,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: HomePage(),
    );
  }
}
