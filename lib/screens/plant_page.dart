import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_book/image.dart';

class PlantPage extends StatelessWidget {
  final String name;
  final String image;
  final String family;
  final String place;
  final String habitat;
  final String date;
  final String collector;
  final String determinate;

  PlantPage(
    this.name,
    this.image,
    this.family,
    this.place,
    this.habitat,
    this.date,
    this.collector,
    this.determinate,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(187, 197, 177, 1),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 3870 / (2701 / MediaQuery.of(context).size.width),
            flexibleSpace: FlexibleSpaceBar(
              background: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScalingImage(image)));
                  },
                  child:
                      FittedBox(fit: BoxFit.fill, child: Image.asset(image))),
            ),
          ),
          SliverToBoxAdapter(
            child: DataTable(
              columns: [
                DataColumn(
                  label: Text(
                    'Тип данных',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Данные',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
              rows: [
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Название')),
                    DataCell(Text(name)),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Семейство')),
                    DataCell(Text(family)),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Место сбора')),
                    DataCell(Text(place)),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Местообитание')),
                    DataCell(Text(habitat)),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Дата сбора')),
                    DataCell(Text(date)),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Собрал')),
                    DataCell(Text(collector)),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Определил')),
                    DataCell(Text(determinate)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
