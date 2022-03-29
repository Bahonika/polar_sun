import 'package:flutter/material.dart';
import 'package:plant_book/screens/park_screen.dart';

class ParkButton extends StatelessWidget {
  String parkName;
  List<Widget> images;
  String info;

  ParkButton(this.parkName, this.images, this.info);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: MediaQuery.of(context).size.width * 0.25,
          child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(0)),
              backgroundColor: MaterialStateProperty.all(Colors.white10),
              elevation: MaterialStateProperty.all(5),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ParkScreen(parkName, images, info)));
            },
            child: Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Divider(),
                Text(
                  parkName,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
