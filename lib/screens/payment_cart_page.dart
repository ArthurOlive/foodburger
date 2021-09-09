import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodburger/components/bottom_menu.dart';
import 'package:foodburger/components/item_cart.dart';
import 'package:foodburger/controllers/cart_list_controller.dart';
import 'package:foodburger/controllers/item_list_controller.dart';
import 'package:foodburger/style/font_text.dart';

class PaymentCart extends StatefulWidget {
  const PaymentCart({Key? key}) : super(key: key);

  @override
  _PaymentCartState createState() => _PaymentCartState();
}

class _PaymentCartState extends State<PaymentCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: ListView(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: new EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Carrinho",
                    style: titleText(),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...didMoutItems(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigatorMenu(
        option: 2,
      ),
    );
  }
}

List<FoodCart> didMoutItems() {
  List<FoodCart> list = [];

  //Poderia ter um metodo que pegaria os itens do banco
  for (int i = 0; i < ItemListController.instance.itens.length; i++) {
    if (CartListController.instance.itens
            .containsKey(ItemListController.instance.itens[i].cod) &&
        CartListController
                .instance.itens[ItemListController.instance.itens[i].cod]! >
            0) {
      list.add(FoodCart(
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
