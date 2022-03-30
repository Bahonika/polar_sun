import 'package:flutter/material.dart';
import '../templates/screen_button.dart';
import 'package:plant_book/screens/parks.dart';

import 'herb.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ScreenButton("Цифровой гербарий", "lib/assets/herbarium.png", Herb()),
          ScreenButton("Флора", "lib/assets/flora.png", Herb()),
          ScreenButton("Заповедники и сады", "lib/assets/sady.png", Parks()),
        ],
      ),
    );
  }
}
