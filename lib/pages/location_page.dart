import 'package:flutter/material.dart';
import 'package:flutter_crawler/services/movement_service.dart';
import 'package:get_it/get_it.dart';

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  MovementService _movementService;

  @override
  void initState() {
    super.initState();
    _movementService = GetIt.I.get<MovementService>();
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
                      if (_movementService.canGoWest()) {
                        _movementService.goWest();
                      }
                    })
                  },
              child: _movementService.canGoWest() ? Text('go west') : null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => {
                        setState(() {
                          if (_movementService.canGoNorth()) {
                            _movementService.goNorth();
                          }
                        })
                      },
                  child: _movementService.canGoNorth() ? Text('go north') : null),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text(_movementService.position?.description ?? 'Error loading location data.'),
              )),
              ElevatedButton(
                  onPressed: () => {
                        setState(() {
                          if (_movementService.canGoSouth()) {
                            _movementService.goSouth();
                          }
                        })
                      },
                  child: _movementService.canGoSouth() ? Text('go south') : null),
            ],
          ),
          ElevatedButton(
              onPressed: () => {
                    setState(() {
                      if (_movementService.canGoEast()) {
                        _movementService.goEast();
                      }
                    })
                  },
              child: _movementService.canGoEast() ? Text('go east') : null),
        ],
      ),
    );
  }
}