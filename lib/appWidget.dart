import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodburger/controllers/cartListController.dart';
import 'package:foodburger/screens/historyPage.dart';
import 'package:foodburger/screens/menuPage.dart';
import 'package:foodburger/screens/paymentCartPage.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: CartListController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.red,
              primaryColorDark: Colors.red,
              brightness: Brightness.light),
          initialRoute: '/',
          routes: {
            '/': (context) => MenuPage(),
            '/history': (context) => HistoryPage(),
            '/payment_cart': (context) => PaymentCart(),
          },
        );
      },
    );
  }
}
