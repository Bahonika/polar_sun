import 'package:flutter/material.dart';
import 'package:plant_book/screens/plant_view.dart';

import '../data/entities/plant.dart';

class PlantButton extends StatelessWidget {
  final Plant plant;

  const PlantButton(this.plant);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Theme.of(context).colorScheme.primaryContainer,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PlantView(plant: plant)));
        },
        child: Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  plant.image,
                  width: MediaQuery.of(context).size.width * 0.21,
                  height: MediaQuery.of(context).size.width * 0.21,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Divider(),
            Text(plant.name,
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
