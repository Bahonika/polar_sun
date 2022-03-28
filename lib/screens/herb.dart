import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_book/main.dart';
import 'package:plant_book/screens/plant_page.dart';

import '../plant_button.dart';

class Herb extends StatefulWidget {
  @override
  _HerbState createState() => _HerbState();
}

class _HerbState extends State<Herb> {
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
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color:  Color.fromRGBO(233, 212, 0, 1)),
        centerTitle: true,
        backgroundColor: mainColor,
        toolbarHeight: 40,
        title: Text(
          "Цифровой гербарий",
          style: TextStyle(color: Color.fromRGBO(233, 212, 0, 1)),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromRGBO(62, 151, 139, 1),
            Color.fromRGBO(94, 145, 73, 1)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('lib/assets/myJson.json'),
              builder: (context, snapshot) {
                var data = json.decode(snapshot.data.toString());
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
                                    data[i]['name'],
                                    'lib/assets/' +
                                        data[i]['id'].toString() +
                                        ".jpg",
                                    data[i]['family'],
                                    data[i]['place'],
                                    data[i]['habitat'],
                                    data[i]['date'],
                                    data[i]['collector'],
                                    data[i]['determinate']),
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
      ),
    );
  }
}
