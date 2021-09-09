import 'package:flutter/cupertino.dart';
import 'package:foodburger/models/Item.dart';
import 'package:foodburger/models/item_type.dart';

class ItemListController extends ChangeNotifier {
  //singleton
  static ItemListController instance = ItemListController();

  List<Item> itens = [];
  ItemListController() {
    this.itens.add(new Item(
          1,
          'Especial da casa',
          'Blender de 180 g, cebola caramelizada, bacon, pão brioche na matenga e creme de queijo cheda da casa',
          '12.80',
          "assets/images/burger1.png",
          ItemType.BURGER,
        ));
    this.itens.add(new Item(
          2,
          'X burger',
          '2 Blender de 180 g, pão brioche na matenga e creme de queijo cheda da casa e molho da casa',
          '9.90',
          "assets/images/burger2.png",
          ItemType.BURGER,
        ));
    this.itens.add(new Item(
          3,
          'Barbecue',
          'Blender de 180 g, cebola caramelizada, bacon, pão brioche na matenga e creme de queijo cheda da casa, maionese da ...',
          '16.00',
          "assets/images/burger3.png",
          ItemType.BURGER,
        ));
    this.itens.add(new Item(
          4,
          'Pickel burger',
          'Blender de 180 g, cebola caramelizada, bacon, pão brioche na matenga e creme de queijo cheda da casa',
          '14.60',
          "assets/images/burger4.png",
          ItemType.BURGER,
        ));
    this.itens.add(new Item(
          5,
          'Batata da casa',
          'Batata palito frita com molho da casa',
          '8.90',
          "assets/images/fries.png",
          ItemType.ACOMPANHAMENTO,
        ));
    this.itens.add(new Item(
          6,
          'Coca cola lata',
          'Refrigerante sabor coca, lata de 350 ml',
          '4.20',
          "assets/images/coca.png",
          ItemType.BEBIDA,
        ));
    this.itens.add(new Item(
          7,
          'Guaraná lata',
          'Refrigerante sabor guaraná, lata de 350 ml',
          '3.80',
          "assets/images/guarana.png",
          ItemType.BEBIDA,
        ));
    this.itens.add(new Item(
          8,
          'Fanta lata',
          'Refrigerante sabor laranja, lata de 350 ml',
          '4.00',
          "assets/images/fanta.png",
          ItemType.BEBIDA,
        ));
  }
}
