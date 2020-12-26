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

  bool canGo(Direction direction) {
    return position.exits.containsKey(direction);
  }

  void go(Direction direction) {
    position = _mapService.locations[position.exits[direction]];
    cameFrom = oppositeDirection(direction);
  }
}