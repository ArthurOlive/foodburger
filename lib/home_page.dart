import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodburger/components/burger_container.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/icon_hamburger.png'),
                Text("FoodBurger"),
              ],
            ),
          ),
          backgroundColor: Color.fromRGBO(31, 31, 31, 1),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: "Hamburger"),
              Tab(text: "Acompanhamentos"),
              Tab(text: "Bebidas"),
            ],
          )),
      body: TabBarView(
        children: [
          ListView(
            children: [
              Burger(
                name: "Especial da casa",
                price: "12.80",
                description: "Descricao",
                cod: "001",
              ),
              Burger(
                name: "Especial da casa",
                price: "12.80",
                description: "Descricao",
                cod: "001",
              ),
              Burger(
                name: "Especial da casa",
                price: "12.80",
                description: "Descricao",
                cod: "001",
              ),
              Burger(
                name: "Especial da casa",
                price: "12.80",
                description: "Descricao",
                cod: "001",
              ),
            ],
          ),
          ListView(
            children: [],
          ),
          ListView(
            children: [],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.red, //                   <--- border color
      width: 5.0,
    ),
  );
}
