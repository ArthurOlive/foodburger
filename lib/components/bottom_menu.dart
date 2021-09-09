import 'package:flutter/material.dart';

class BottomNavigatorMenu extends StatelessWidget {
  final int option;
  const BottomNavigatorMenu({Key? key, required this.option}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book),
          label: 'Cardapio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time_filled_outlined),
          label: 'Historico',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_rounded),
          label: 'Compras',
        ),
      ],
      currentIndex: option,
      onTap: (int index) {
        print("$index");
        switch (index) {
          case 0:
            Navigator.of(context).pushReplacementNamed("/");
            break;
          case 1:
            print("B");
            Navigator.of(context).pushReplacementNamed("/history");
            break;
          case 2:
            Navigator.of(context).pushReplacementNamed("/payment_cart");
            break;
        }
      },
    );
  }
}
