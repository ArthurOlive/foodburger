import 'package:flutter/material.dart';
import 'package:foodburger/controllers/cart_list_controller.dart';
import 'package:foodburger/controllers/item_list_controller.dart';

class BottomNavigatorMenu extends StatelessWidget {
  final int option;
  const BottomNavigatorMenu({Key? key, required this.option}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book),
          label: 'Cardapio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time_filled_outlined),
          label: 'Historico',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Icon(Icons.shopping_cart_rounded),
              if (CartListController.instance.itens.length > 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 2, 0),
                  child: CircleAvatar(
                    radius: 5.0,
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    child: Text(
                      CartListController.instance.itens.length.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 9.0,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          label: 'Compras',
        ),
      ],
      currentIndex: option,
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.of(context).pushReplacementNamed("/");
            break;
          case 1:
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
