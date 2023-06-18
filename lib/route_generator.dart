import 'package:flutter/material.dart';
import 'package:horoscope_app/data/horoscope_list.dart';
import 'package:horoscope_app/model/horoscope.dart';
import 'package:horoscope_app/model/horoscope_detail.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => HoroscopeList(),
        );

      case "/horoscopeDetail":
        final Horoscope selected = settings.arguments as Horoscope;
        return MaterialPageRoute(
          builder: (context) =>
              HoroscopeDetail(selectedHoroscope: selected),
        );
    }
  }
}
