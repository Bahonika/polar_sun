import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_book/screens/main_menu.dart';
import 'package:plant_book/templates/main_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    Color primary = Color.fromRGBO(75, 121, 55, 1.0);

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: primary,
        systemNavigationBarColor: primary,
      ),
    );

    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromRGBO(187, 197, 177, 1),
          backgroundColor: Color.fromRGBO(187, 197, 177, 1),
          primaryColor: primary,
          canvasColor: Color.fromRGBO(187, 197, 177, 1),
          textTheme: TextTheme(
              displaySmall: TextStyle(color: Color.fromRGBO(233, 212, 0, 1))),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(onPrimary: Colors.black54)
              .copyWith(primaryContainer: Color.fromRGBO(245, 245, 245, 0.6))
              .copyWith(primary: primary)
              .copyWith(secondary: Color.fromRGBO(62, 151, 139, 1))),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Полярное солнце',
          ),
        ),
        drawer: MainDrawer(),
        body: Column(
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
