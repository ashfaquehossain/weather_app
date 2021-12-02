// To parse this JSON data, do
//
//     final mainWeatherResponse = mainWeatherResponseFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

MainWeatherResponse mainWeatherResponseFromMap(String str) => MainWeatherResponse.fromMap(json.decode(str));

String mainWeatherResponseToMap(MainWeatherResponse data) => json.encode(data.toMap());

class MainWeatherResponse {
  MainWeatherResponse({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  final Coord coord;
  final List<Weather> weather;
  final String base;
  final Main main;
  final int visibility;
  final Wind wind;
  final Clouds clouds;
  final int dt;
  final Sys sys;
  final int timezone;
  final int id;
  final String name;
  final int cod;

  factory MainWeatherResponse.fromMap(Map<String, dynamic> json) => MainWeatherResponse(
    coord: Coord.fromMap(json["coord"]),
    weather: List<Weather>.from(json["weather"].map((x) => Weather.fromMap(x))),
    base: json["base"],
    main: Main.fromMap(json["main"]),
    visibility: json["visibility"],
    wind: Wind.fromMap(json["wind"]),
    clouds: Clouds.fromMap(json["clouds"]),
    dt: json["dt"],
    sys: Sys.fromMap(json["sys"]),
    timezone: json["timezone"],
    id: json["id"],
    name: json["name"],
    cod: json["cod"],
  );

  Map<String, dynamic> toMap() => {
    "coord": coord.toMap(),
    "weather": List<dynamic>.from(weather.map((x) => x.toMap())),
    "base": base,
    "main": main.toMap(),
    "visibility": visibility,
    "wind": wind.toMap(),
    "clouds": clouds.toMap(),
    "dt": dt,
    "sys": sys.toMap(),
    "timezone": timezone,
    "id": id,
    "name": name,
    "cod": cod,
  };
}

class Clouds {
  Clouds({
    required this.all,
  });

  final int all;

  factory Clouds.fromMap(Map<String, dynamic> json) => Clouds(
    all: json["all"],
  );

  Map<String, dynamic> toMap() => {
    "all": all,
  };
}

class Coord {
  Coord({
    required this.lon,
    required this.lat,
  });

  final double lon;
  final double lat;

  factory Coord.fromMap(Map<String, dynamic> json) => Coord(
    lon: json["lon"].toDouble(),
    lat: json["lat"].toDouble(),
  );

  Map<String, dynamic> toMap() => {
    "lon": lon,
    "lat": lat,
  };
}

class Main {
  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel,
  });

  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int humidity;
  final int seaLevel;
  final int grndLevel;

  factory Main.fromMap(Map<String, dynamic> json) => Main(
    temp: json["temp"].toDouble(),
    feelsLike: json["feels_like"].toDouble(),
    tempMin: json["temp_min"].toDouble(),
    tempMax: json["temp_max"].toDouble(),
    pressure: json["pressure"],
    humidity: json["humidity"],
    seaLevel: json["sea_level"],
    grndLevel: json["grnd_level"],
  );

  Map<String, dynamic> toMap() => {
    "temp": temp,
    "feels_like": feelsLike,
    "temp_min": tempMin,
    "temp_max": tempMax,
    "pressure": pressure,
    "humidity": humidity,
    "sea_level": seaLevel,
    "grnd_level": grndLevel,
  };
}

class Sys {
  Sys({
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  final String country;
  final int sunrise;
  final int sunset;

  factory Sys.fromMap(Map<String, dynamic> json) => Sys(
    country: json["country"],
    sunrise: json["sunrise"],
    sunset: json["sunset"],
  );

  Map<String, dynamic> toMap() => {
    "country": country,
    "sunrise": sunrise,
    "sunset": sunset,
  };
}

class Weather {
  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  final int id;
  final String main;
  final String description;
  final String icon;

  factory Weather.fromMap(Map<String, dynamic> json) => Weather(
    id: json["id"],
    main: json["main"],
    description: json["description"],
    icon: json["icon"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "main": main,
    "description": description,
    "icon": icon,
  };
}

class Wind {
  Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  final double speed;
  final int deg;
  final double gust;

  factory Wind.fromMap(Map<String, dynamic> json) => Wind(
    speed: json["speed"].toDouble(),
    deg: json["deg"],
    gust: json["gust"].toDouble(),
  );

  Map<String, dynamic> toMap() => {
    "speed": speed,
    "deg": deg,
    "gust": gust,
  };
}
