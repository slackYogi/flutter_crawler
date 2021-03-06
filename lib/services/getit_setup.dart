import 'package:flutter_crawler/services/map_service.dart';
import 'package:flutter_crawler/services/movement_service.dart';
import 'package:get_it/get_it.dart';

class GetItSetup {
  static void initialize() {
    final getIt = GetIt.instance;
    final mapService = MapService();
    getIt.registerSingleton<MapService>(mapService);
    final movementService = MovementService();
    getIt.registerSingleton<MovementService>(movementService);
    // when you need it, call it:
    // MapService _mapService;
    // _mapService = GetIt.I.get<MapService>();
  }
}