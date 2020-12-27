import 'package:flutter/foundation.dart';
import 'package:flutter_crawler/enums/direction.dart';
import 'package:flutter_crawler/services/map_service.dart';
import 'package:get_it/get_it.dart';

class MovementService {
  MapService _mapService;
  Direction cameFrom;

  MovementService() {
    _mapService = GetIt.I.get<MapService>();
    cameFrom = Direction.south;
  }

  String cameFromDisplay() {
    return describeEnum(cameFrom);
  }

  bool canGo(Direction direction) {
    return _mapService.position.exits.containsKey(direction);
  }

  void go(Direction direction) {
    _mapService.position = _mapService.locations[_mapService.position.exits[direction]];
    cameFrom = oppositeDirection(direction);
  }
}