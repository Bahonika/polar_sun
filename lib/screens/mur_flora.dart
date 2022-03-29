import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_book/screens/plant_view.dart';

import '../plant_button.dart';

class MurFlora extends StatefulWidget {
  @override
  _MurFloraState createState() => _MurFloraState();
}

class _MurFloraState extends State<MurFlora> {
  List _items = [];

  Future<void> readJson() async {
    final String response =
    await rootBundle.loadString('lib/assets/myJson.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Text(
            "Проект выполнен студентами МАГУ в рамках дисциплины \"Университетский проект\"",
            style: TextStyle(
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          )
        ));
  }
}
