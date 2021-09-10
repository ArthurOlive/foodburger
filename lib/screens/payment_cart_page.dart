import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodburger/components/bottom_menu.dart';
import 'package:foodburger/components/item_cart.dart';
import 'package:foodburger/components/title_bar.dart';
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
        title: TitleBar(),
        backgroundColor: Color.fromRGBO(31, 31, 31, 1),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            color: Colors.white,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (CartListController.instance.itens.length == 0)
                  Container(
                    margin: new EdgeInsets.symmetric(
                        horizontal: 10, vertical: 100.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.remove_shopping_cart_rounded,
                          size: 50,
                        ),
                        Text("Carrinho vazio"),
                      ],
                    ),
                  ),
                ...didMoutItems(),
              ],
            ),
          ),
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Valor',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'R\$ 0,00',
                  style: subtitleText(),
                ),
              ],
            ),
          ),
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: CartListController.instance.itens.length == 0
                  ? null
                  : () {
                      print("Comprando");
                    },
              child: const Text('Finalizar compra'),
              style: ButtonStyle(),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigatorMenu(
        option: 2,
      ),
    );
  }

  List<FoodCart> didMoutItems() {
    //Poderia ter um metodo que pegaria os itens do banco
    List<FoodCart> list = [];

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
}
