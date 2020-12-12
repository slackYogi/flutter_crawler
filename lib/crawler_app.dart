import 'package:flutter/material.dart';
import 'package:flutter_crawler/current_location.dart';
import 'package:flutter_crawler/services/map_service.dart';
import 'package:get_it/get_it.dart';

class CrawlerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dungeon Crawler',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CrawlerHome(title: 'Crawler'),
    );
  }
}

class CrawlerHome extends StatefulWidget {
  CrawlerHome({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CrawlerHomeState createState() => _CrawlerHomeState();
}

class _CrawlerHomeState extends State<CrawlerHome> {
  //TODO research GetIt
  //final locations = GetIt.I.get<MapService>();
  CurrentLocation _currentLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: ElevatedButton(onPressed: null, child: null),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: null, child: null),
                  Center(child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(_currentLocation?.description ?? 'area description'),
                  )),
                  ElevatedButton(onPressed: null, child: null),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: ElevatedButton(onPressed: null, child: null),
              ),
            )
          ],
        ),
      ),
    );
  }
}
