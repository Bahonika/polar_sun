import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_book/screen_button.dart';
import 'package:plant_book/screens/about.dart';
import 'package:plant_book/screens/main_menu.dart';
import 'package:splashscreen/splashscreen.dart';

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
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        seconds: 1,
        photoSize: 164,
        loaderColor: Color.fromRGBO(62, 151, 139, 1),
        useLoader: true,
        image: Image.asset("lib/assets/splash.png"),
        gradientBackground: LinearGradient(
          colors: [
            Color.fromRGBO(166, 180, 183, 1.0),
            Color.fromRGBO(94, 145, 73, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        navigateAfterSeconds: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: Color.fromRGBO(233, 212, 0, 1.0)),
              centerTitle: true,
              backgroundColor: mainColor,
              toolbarHeight: 40,
              title: Text(
                'Полярное солнце',
                style: TextStyle(color: Color.fromRGBO(233, 212, 0, 1)),
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
                  otherAccountsPictures: [Image.asset("lib/assets/masu.png",  fit: BoxFit.fitWidth, alignment: Alignment.topLeft)],
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
                      child:
                          ScreenButton("О нас", "lib/assets/null.png", About()),
                    ),
                  ),
                ),
              ),
            ])),
            body: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(62, 151, 139, 1),
                    Color.fromRGBO(94, 145, 73, 1)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MainMenu(),
                    Expanded(
                        child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: Image.asset("lib/assets/sprouts.png", fit: BoxFit.fitWidth,)))
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
