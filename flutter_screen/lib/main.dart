import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screen/Constant.dart';
import 'package:flutter_screen/FirstScreen.dart';
import 'package:flutter_screen/SecondScreen.dart';

void main() => runApp(chooseWidget(window.defaultRouteName));

Widget chooseWidget(String route) {
  switch (route) {
  // name of the route defined in the host app
    case 'splashRoute':
      return MyApp();

    default:
      return MyApp();
  }
}

class MyApp extends StatelessWidget {
  Map<int, Color> color =
  {
    50:kRedColor,
    100:kRedColor,
    200:kRedColor,
    300:kRedColor,
    400:kRedColor,
    500:kRedColor,
    600:kRedColor,
    700:kRedColor,
    800:kRedColor,
    900:kRedColor,
  };
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: MaterialColor(0xFFE54A3A,color),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Satsang Yatra', style: kTextStyle20PRW,),
              bottom: TabBar(
                labelStyle: kTextStyle14PRW,
                tabs: [
                  Tab(
                    text: 'Locations',
                  ),
                  Tab(
                    text: 'Map',
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [
                FirstScreen(),
                SecondScreen()
              ],
            ),
          ),
        )
    );
  }
}