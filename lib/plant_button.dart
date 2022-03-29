import 'package:flutter/material.dart';

class PlantButton extends StatelessWidget {
  final String name;
  final Widget widget;
  final String image;

  const PlantButton(this.name, this.widget, this.image);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Theme.of(context).colorScheme.primaryContainer,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => widget));
        },
        child: Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(5),
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
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
