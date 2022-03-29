import 'package:flutter/material.dart';

class ScreenButton extends StatelessWidget {
  String name;
  Widget widget;
  String image;

  ScreenButton(this.name, this.image, this.widget);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      elevation: 3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
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
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Divider(),
              Text(
                name,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
