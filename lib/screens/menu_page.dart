import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodburger/components/bottom_menu.dart';
import 'package:foodburger/components/burger_container.dart';

class MenuPage extends StatelessWidget {
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
              Tab(text: "Hambúrger"),
              Tab(text: "Acompanhamentos"),
              Tab(text: "Bebidas"),
            ],
          )),
      body: TabBarView(
        children: [
          ListView(
            children: didMoutBurgers(),
          ),
          ListView(
            children: [],
          ),
          ListView(
            children: [],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigatorMenu(
        option: 0,
      ),
    );
  }
}

List<Burger> didMoutBurgers() {
  List<Burger> list = [];

  for (int i = 1; i <= 4; i++) {
    list.add(Burger(
      imageIcon: Image.asset("assets/images/burger$i.png"),
      name: "Especial da casa",
      price: "12.80",
      description: "Descricao",
      cod: "$i",
    ));
  }

  return list;
}
