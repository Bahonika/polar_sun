import 'package:flutter/material.dart';
import 'package:plant_book/screen_button.dart';
import 'package:plant_book/screens/park.dart';

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
          SizedBox(height: 16,),
          ScreenButton("Цифровой гербарий", "lib/assets/tsifrovoy_gerbariy.png", Herb()),
          SizedBox(height: 12,),

          ScreenButton("Флора", "lib/assets/flora.png", Herb()),
          SizedBox(height: 12,),

          ScreenButton("Заповедники и сады", "lib/assets/sady.png", Park()),
        ],
      ),
    );
  }
}
