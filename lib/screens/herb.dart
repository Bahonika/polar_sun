import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:plant_book/data/entities/plant.dart';
import 'package:plant_book/data/repositories/plant_repository.dart';
import 'package:plant_book/main.dart';
import 'package:plant_book/screens/plant_view.dart';

import '../plant_button.dart';

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
      body: Center(
        child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('lib/assets/myJson.json'),
            builder: (context, snapshot) {
              var data = json.decode(snapshot.data.toString());
              print(data);
              return ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 0,
                    );
                  },
                  itemCount: data == null ? 0 : data.length,
                  itemBuilder: (BuildContext context, int i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          PlantButton(
                              data[i]['name'],
                              PlantPage(
                                plant: Plant.fromJson(data[i]),
                              ),
                              'lib/assets/' +
                                  data[i]['id'].toString() +
                                  ".jpg"),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                    );
                  });
            }),
      ),
    );
  }
}
