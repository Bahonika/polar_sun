import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:plant_book/data/entities/plant.dart';
import 'package:plant_book/data/repositories/plant_repository.dart';
import 'main.dart';
import 'package:plant_book/screens/plant_view.dart';

import '../templates/plant_button.dart';

class Herb extends StatefulWidget {
  @override
  _HerbState createState() => _HerbState();
}

class _HerbState extends State<Herb> {
  List<Plant> plants = [];

  var repository = PlantRepository();
  final Map<String, String> queryParams = {};

  Future<void> getData(Map<String, String> queryParams) async {
    plants = await repository.getAll(queryParams: queryParams);
    setState(() {});
  }

  @override
  void initState() {
    getData(queryParams);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Цифровой гербарий",
          ),
        ),
        body: ListView.builder(
            itemCount: plants.length,
            itemBuilder: (BuildContext context, int i) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: PlantButton(plants[i]),
              );
            }));
  }
}
