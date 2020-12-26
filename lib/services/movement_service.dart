import 'package:flutter_crawler/enums/direction.dart';
import 'package:flutter_crawler/models/location.dart';
import 'package:flutter_crawler/services/map_service.dart';
import 'package:get_it/get_it.dart';

class MovementService {
  Location position;
  MapService _mapService;
  Direction cameFrom;

  MovementService() {
    _mapService = GetIt.I.get<MapService>();
    this.position = _mapService.initialPosition;
    cameFrom = Direction.south;
  }

  bool canGoWest() {
    return position.exits.containsKey(Direction.west);
  }

  bool canGoNorth() {
    return position.exits.containsKey(Direction.north);
  }

  bool canGoEast() {
    return position.exits.containsKey(Direction.east);
  }

  bool canGoSouth() {
    return position.exits.containsKey(Direction.south);
  }

  void goWest() {
    position = _mapService.locations[position.exits[Direction.west]];
  }

  void goNorth() {
    position = _mapService.locations[position.exits[Direction.north]];
  }

  void goEast() {
    position = _mapService.locations[position.exits[Direction.east]];
  }

  void goSouth() {
    position = _mapService.locations[position.exits[Direction.south]];
  }
}