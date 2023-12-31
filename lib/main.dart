import 'package:flutter/material.dart';
import 'package:horoscope_app/route_generator.dart';

import 'data/horoscope_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}
