import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodburger/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.red,
            primaryColorDark: Colors.red,
            brightness: Brightness.light),
        home: DefaultTabController(
          length: 3,
          child: HomePage(),
        ));
  }
}
