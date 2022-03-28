import 'package:flutter/material.dart';

class PlantButton extends StatelessWidget {
  final String name;
  final Widget widget;
  final String image;

  const PlantButton(this.name, this.widget, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(68, 125, 95, 1.0),
              offset: Offset(3, 3),
              blurRadius: 2),
          BoxShadow(
              color: Color.fromRGBO(86, 147, 132, 1.0),
              offset: Offset(-3, -3),
              blurRadius: 2),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(64, 123, 93, 1.0),
                  offset: Offset(3, 3),
                  blurRadius: 2),
              BoxShadow(
                  color: Color.fromRGBO(86, 147, 132, 1.0),
                  offset: Offset(-3, -3),
                  blurRadius: 2),
            ],
            gradient: RadialGradient(colors: [
              Color.fromRGBO(62, 151, 139, 1),
              Color.fromRGBO(94, 145, 73, 1)
            ], center: Alignment.centerLeft, radius: 7),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(0)),
              backgroundColor: MaterialStateProperty.all(Colors.white10),
              elevation: MaterialStateProperty.all(4),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => widget));
            },
            child: Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      image,
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Divider(),
                Text(name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20, color: Color.fromRGBO(233, 212, 0, 1))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
