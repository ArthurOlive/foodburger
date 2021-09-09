import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodburger/screens/history_page.dart';
import 'package:foodburger/screens/menu_page.dart';
import 'package:foodburger/screens/payment_cart_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.red,
          primaryColorDark: Colors.red,
          brightness: Brightness.light),
      initialRoute: '/',
      routes: {
        '/': (context) => DefaultTabController(
              length: 3,
              child: MenuPage(),
            ),
        '/history': (context) => HistoryPage(),
        '/payment_cart': (context) => PaymentCart(),
      },
    );
  }
}
