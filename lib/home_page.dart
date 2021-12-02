import 'package:flutter/material.dart';

import 'CurrentWeather.dart';
import 'forcastWeather.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        bottom: TabBar(
            tabs:
            [
              Tab(child: Text("Current Weather"),),
              Tab(child: Text("Forcast Weather"),),
            ]),
      ),
      body: TabBarView(
          children: [
            CurrentWeather(),
            ForcastWeather(),
          ]),
    ),
    );
  }
}
