import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodburger/components/bottomMenu.dart';
import 'package:foodburger/components/itemContainer.dart';
import 'package:foodburger/components/titleBar.dart';
import 'package:foodburger/controllers/itemListController.dart';
import 'package:foodburger/models/itemType.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            title: TitleBar(),
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
              children: didMoutAcompanhamentos(),
            ),
            ListView(
              children: didMoutBebidas(),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigatorMenu(
          option: 0,
        ),
      ),
    );
  }
}

List<Food> didMoutBurgers() {
  List<Food> list = [];

  //Poderia ter um metodo que pegaria os itens do banco
  for (int i = 0; i < ItemListController.instance.itens.length; i++) {
    if (ItemListController.instance.itens[i].type == ItemType.BURGER) {
      list.add(Food(
        imageIcon: Image.asset(
          ItemListController.instance.itens[i].imageUrl,
          fit: BoxFit.cover,
        ),
        name: ItemListController.instance.itens[i].name,
        price: ItemListController.instance.itens[i].price,
        description: ItemListController.instance.itens[i].description,
        cod: ItemListController.instance.itens[i].cod,
      ));
    }
  }

  return list;
}

List<Food> didMoutAcompanhamentos() {
  List<Food> list = [];

  for (int i = 0; i < ItemListController.instance.itens.length; i++) {
    if (ItemListController.instance.itens[i].type == ItemType.ACOMPANHAMENTO) {
      list.add(Food(
        imageIcon: Image.asset(
          ItemListController.instance.itens[i].imageUrl,
          fit: BoxFit.cover,
        ),
        name: ItemListController.instance.itens[i].name,
        price: ItemListController.instance.itens[i].price,
        description: ItemListController.instance.itens[i].description,
        cod: ItemListController.instance.itens[i].cod,
      ));
    }
  }

  return list;
}

List<Food> didMoutBebidas() {
  List<Food> list = [];

  for (int i = 0; i < ItemListController.instance.itens.length; i++) {
    if (ItemListController.instance.itens[i].type == ItemType.BEBIDA) {
      list.add(Food(
        imageIcon: Image.asset(ItemListController.instance.itens[i].imageUrl,
            fit: BoxFit.cover),
        name: ItemListController.instance.itens[i].name,
        price: ItemListController.instance.itens[i].price,
        description: ItemListController.instance.itens[i].description,
        cod: ItemListController.instance.itens[i].cod,
      ));
    }
  }

  return list;
}
