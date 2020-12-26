enum Direction {
  north,
  east,
  south,
  west
}

Direction oppositeDirection(Direction direction) {
  switch(direction) {
    case Direction.west:
      return Direction.east;
    case Direction.north:
      return Direction.south;
    case Direction.east:
      return Direction.west;
    case Direction.south:
      return Direction.north;
  }
}