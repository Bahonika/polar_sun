import 'package:flutter/material.dart';
import 'package:plant_book/screens/park_screen.dart';

class ParkButton extends StatelessWidget {
  String parkName;
  List<Widget> images;
  String info;

  ParkButton(this.parkName, this.images, this.info);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Color.fromRGBO(68, 125, 95, 1.0), offset: Offset(3,3), blurRadius: 2),
          BoxShadow(color: Color.fromRGBO(86, 147, 132, 1.0), offset: Offset(-3,-3), blurRadius: 2),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
            gradient: RadialGradient(colors: [
              Color.fromRGBO(62, 151, 139, 1),
              Color.fromRGBO(94, 145, 73, 1)
            ], center: Alignment.centerLeft, radius: 7),
          ),
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
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(233, 212, 0, 1)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
