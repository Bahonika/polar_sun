import 'package:flutter/material.dart';
import 'package:plant_book/main.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color.fromRGBO(233, 212, 0, 1)),
          centerTitle: true,
          backgroundColor: mainColor,
          toolbarHeight: 40,
          title: Text(
            "О нас",
            style: TextStyle(color: Color.fromRGBO(233, 212, 0, 1)),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(62, 151, 139, 1),
                Color.fromRGBO(94, 145, 73, 1)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(
              child: Text(
                "Проект создан в рамках дисциплины "
                    "\"Университетский проект\" командой "
                    "студентов 2ПМИ и 2БИО \nПочта для"
                    " связи: Bahonika@mail.ru",
                style: TextStyle(fontSize: 20, color: Color.fromRGBO(233, 212, 0, 1)),
              ),
            ),
          ),
        ));
  }
}
