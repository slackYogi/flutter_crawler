import 'package:flutter/material.dart';
import 'package:flutter_crawler/current_location.dart';

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  //TODO research GetIt
  //final locations = GetIt.I.get<MapService>();
  CurrentLocation _currentLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: null, child: null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: null, child: null),
              Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(_currentLocation?.description ?? 'area description'),
                  )),
              ElevatedButton(onPressed: null, child: null),
            ],
          ),
          ElevatedButton(onPressed: null, child: null)
        ],
      ),
    );
  }
}
