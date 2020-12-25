import 'package:flutter/material.dart';
import 'package:flutter_crawler/services/map_service.dart';
import 'package:get_it/get_it.dart';

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  MapService _mapService;

  @override
  void initState() {
    super.initState();
    _mapService = GetIt.I.get<MapService>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () => {
                    setState(() {
                      if (_mapService.canGoWest()) {
                        _mapService.goWest();
                      }
                    })
                  },
              child: _mapService.canGoWest() ? Text('go west') : null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => {
                        setState(() {
                          if (_mapService.canGoNorth()) {
                            _mapService.goNorth();
                          }
                        })
                      },
                  child: _mapService.canGoNorth() ? Text('go north') : null),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text(_mapService.position?.description ?? 'Error loading location data.'),
              )),
              ElevatedButton(
                  onPressed: () => {
                        setState(() {
                          if (_mapService.canGoSouth()) {
                            _mapService.goSouth();
                          }
                        })
                      },
                  child: _mapService.canGoSouth() ? Text('go south') : null),
            ],
          ),
          ElevatedButton(
              onPressed: () => {
                    setState(() {
                      if (_mapService.canGoEast()) {
                        _mapService.goEast();
                      }
                    })
                  },
              child: _mapService.canGoEast() ? Text('go east') : null),
        ],
      ),
    );
  }
}