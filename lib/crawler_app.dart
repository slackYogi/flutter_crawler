import 'package:flutter/material.dart';
import 'package:flutter_crawler/pages/home_page.dart';
import 'package:flutter_crawler/pages/location_page.dart';
import 'package:flutter_crawler/services/getit_setup.dart';

class CrawlerApp extends StatefulWidget {
  @override
  _CrawlerAppState createState() => _CrawlerAppState();
}

class _CrawlerAppState extends State<CrawlerApp> {
  @override
  void initState() {
    super.initState();
    GetItSetup.initialize();
  }

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