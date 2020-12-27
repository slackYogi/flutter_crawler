import 'package:flutter/material.dart';
import 'package:flutter_crawler/enums/direction.dart';
import 'package:flutter_crawler/services/map_service.dart';
import 'package:flutter_crawler/services/movement_service.dart';
import 'package:get_it/get_it.dart';

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  MovementService _movementService;
  MapService _mapService;

  @override
  void initState() {
    super.initState();
    _mapService = GetIt.I.get<MapService>();
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
                      if (_movementService.canGo(Direction.west)) {
                        _movementService.go(Direction.west);
                      }
                    })
                  },
              //TODO modify buttons text so it corresponds with dircetion you came from
              child: _movementService.canGo(Direction.west) ? Text('go\nwest') : null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => {
                        setState(() {
                          if (_movementService.canGo(Direction.north)) {
                            _movementService.go(Direction.north);
                          }
                        })
                      },
                  child: _movementService.canGo(Direction.north) ? Text('go\nnorth') : null),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text(_locationDescription() ?? 'Error loading location data.'),
              )),
              ElevatedButton(
                  onPressed: () => {
                        setState(() {
                          if (_movementService.canGo(Direction.south)) {
                            _movementService.go(Direction.south);
                          }
                        })
                      },
                  child: _movementService.canGo(Direction.south) ? Text('go\nsouth') : null),
            ],
          ),
          ElevatedButton(
              onPressed: () => {
                    setState(() {
                      if (_movementService.canGo(Direction.east)) {
                        _movementService.go(Direction.east);
                      }
                    })
                  },
              child: _movementService.canGo(Direction.east) ? Text('go\neast') : null),
        ],
      ),
    );
  }

  String _locationDescription() {
    return 'You came from ${_movementService.cameFromDisplay()}.\n${_mapService.getPositionDescription()}';
  }
}