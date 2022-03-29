
import 'package:plant_book/data/entities/plant.dart';
import 'package:plant_book/data/repositories/abstract/basic.dart';

class PlantRepository extends BasicRepository<Plant>{

  @override
  final String apiEndpoint = "plant";

  @override
  Plant fromJson(json) {
    return Plant.fromJson(json);
  }
}