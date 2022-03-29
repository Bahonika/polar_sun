import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_book/screen_button.dart';
import 'package:plant_book/screens/about.dart';
import 'package:plant_book/screens/main_menu.dart';

void main() {
  runApp(MyApp());
}

Color mainColor = Color.fromRGBO(93, 145, 72, 1);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static Color mainColor = Color.fromRGBO(93, 145, 72, 1);

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: mainColor,
        systemNavigationBarColor: mainColor,
      ),
    );

    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromRGBO(187, 197, 177, 1),
          backgroundColor: Color.fromRGBO(187, 197, 177, 1),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(214, 221, 255, 0.4),
                  shadowColor: Color.fromRGBO(214, 221, 255, 0.4),
              )),
          textTheme: TextTheme(
              displaySmall: TextStyle(color: Color.fromRGBO(233, 212, 0, 1))),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(onPrimary: Color.fromRGBO(233, 212, 0, 1))
          .copyWith(primaryContainer: Color.fromRGBO(214, 221, 255, 0.4) )
              .copyWith(primary: Color.fromRGBO(94, 145, 73, 1))
              .copyWith(secondary: Color.fromRGBO(62, 151, 139, 1))),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Полярное солнце',
          ),
        ),
        drawer: Drawer(
            child: Column(children: <Widget>[
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 151, 139, 1),
            ),
            child: UserAccountsDrawerHeader(
              currentAccountPicture: Image.asset(
                "lib/assets/logo.png",
              ),
              otherAccountsPictures: [
                Image.asset("lib/assets/masu.png",
                    fit: BoxFit.fitWidth, alignment: Alignment.topLeft)
              ],
              otherAccountsPicturesSize: Size(180, 180),
              currentAccountPictureSize: Size(80, 80),
              decoration: BoxDecoration(color: mainColor),
              accountName: Text(
                "Проект Цифровой гербарий,\nсозданный студентами МАГУ",
                style: TextStyle(
                    color: Color.fromRGBO(233, 212, 0, 1), fontSize: 20),
              ),
              accountEmail: null,
            ),
          ),
          Expanded(
            child: FractionallySizedBox(
              widthFactor: 1,
              child: Container(
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
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8, bottom: 510, top: 8),
                  child: ScreenButton("О нас", "lib/assets/null.png", About()),
                ),
              ),
            ),
          ),
        ])),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            MainMenu(),
            Expanded(
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Image.asset(
                      "lib/assets/sprouts.png",
                      fit: BoxFit.fitWidth,
                    )))
          ],
        ),
      ),
    );
  }
}
