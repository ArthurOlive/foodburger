import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodburger/controllers/item_list_controller.dart';
import 'package:foodburger/screens/history_page.dart';
import 'package:foodburger/screens/item_confirm_page.dart';
import 'package:foodburger/screens/menu_page.dart';
import 'package:foodburger/screens/payment_cart_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: ItemListController.instance,
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
