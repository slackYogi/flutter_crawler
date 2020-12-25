import 'package:flutter/material.dart';
import 'package:flutter_crawler/pages/home.dart';
import 'package:flutter_crawler/pages/location.dart';

class CrawlerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(title: 'Crawler'),
        '/location': (context) => LocationPage(),
      },
    );
  }
}


