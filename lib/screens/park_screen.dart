import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../main.dart';

class ParkScreen extends StatefulWidget {
  String parkName;
  List<Widget> images;
  String info;
  ParkScreen(this.parkName, this.images, this.info);

  @override
  _ParkScreenState createState() => _ParkScreenState();
}

class _ParkScreenState extends State<ParkScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(233, 212, 0, 1)),
        centerTitle: true,
        backgroundColor: mainColor,
        toolbarHeight: 40,
        title: Text(
          widget.parkName,
          style: TextStyle(color: Color.fromRGBO(233, 212, 0, 1)),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(colors: [
            Color.fromRGBO(62, 151, 139, 1),
            Color.fromRGBO(94, 145, 73, 1)
          ], center: Alignment.centerLeft, radius: 7),
        ),
        child: ListView(
          children: [
            Text(widget.info, style: TextStyle(fontSize: 20, color: Colors.white),),
            CarouselSlider(
                items: widget.images,
                options: CarouselOptions(
                  height: 400,
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                )
            )
          ],
        ),
      ),
    );
  }
}
