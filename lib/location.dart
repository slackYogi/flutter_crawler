import 'package:flutter_crawler/enums/direction.dart';

class Location {
  int id;
  String description;
  Map<Direction, int> exits = Map();
}
