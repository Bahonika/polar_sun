import 'package:flutter/material.dart';
import 'package:plant_book/data/entities/plant.dart';
import 'package:plant_book/image.dart';

class PlantPage extends StatefulWidget {
  final Plant plant;

  PlantPage({required this.plant});

  @override
  State<PlantPage> createState() => _PlantPageState();
}

class _PlantPageState extends State<PlantPage> {
  List<DataRow> rows = [];

  DataTable getTable() {
    return DataTable(columns: [
      DataColumn(
          label: ConstrainedBox(
              constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width / 3,
      ))),
      DataColumn(
          label: ConstrainedBox(
              constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width / 3,
      ))),
    ], rows: rows);
  }

  rowsFill() {
    widget.plant.getFields().forEach((key, value) {
      rows.add(DataRow(cells: [
        DataCell(Text(key)),
        DataCell(value != null ? Text(value) : Text("-")),
      ]));
    });
  }

  @override
  void initState() {
    rowsFill();
    super.initState();
  }

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
                            builder: (context) => ScalingImage(widget.plant.image)));
                  },
                  child:
                      FittedBox(fit: BoxFit.fill, child: Image.asset(widget.plant.image))),
            ),
          ),
          SliverToBoxAdapter(
            child: getTable()
          ),
        ],
      ),
    );
  }
}
