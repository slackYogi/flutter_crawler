import 'package:flutter_crawler/enums/direction.dart';
import 'package:flutter_crawler/models/location.dart';

class MapService {
  Location initialPosition;
  Location position;

  final Map<int, Location> locations = {
    0: Location(0, 'location 0', {Direction.west: 1}),
    1: Location(1, 'location 1', {
      Direction.west: 4,
      Direction.north: 2,
      Direction.east: 0,
      Direction.south: 3,
    }),
    2: Location(2, 'location 2', {
      Direction.south: 1,
    }),
    3: Location(3, 'location 3', {
      Direction.north: 1,
    }),
    4: Location(4, 'location 4', {Direction.west: 5, Direction.east: 1}),
    5: Location(5, 'location 5', {Direction.west: 6, Direction.east: 4}),
    6: Location(6, 'location 6', {
      Direction.north: 7,
      Direction.east: 5,
    }),
    7: Location(7, 'location 7', {Direction.north: 8, Direction.south: 6}),
    8: Location(8, 'location 8', {Direction.south: 7}),
  };

  MapService() {
    this.initialPosition = locations[0];
    this.position = initialPosition;
  }

  String getPositionDescription() {
    return position?.description ?? 'Error loading description.';
  }
}