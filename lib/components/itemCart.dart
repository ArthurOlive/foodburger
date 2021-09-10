import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodburger/controllers/cartListController.dart';
import 'package:foodburger/style/fontText.dart';

class FoodCart extends StatelessWidget {
  final Image? imageIcon;
  final String? name;
  final String? description;
  final String? price;
  final int cod;
  final Function function;

  const FoodCart(
      {Key? key,
      this.name,
      this.price,
      this.description,
      required this.function,
      required this.cod,
      this.imageIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.only(
        bottom: 5,
        top: 10,
        left: 10,
        right: 10,
      ),
      padding: new EdgeInsets.only(
        bottom: 0,
        top: 0,
        left: 0,
        right: 0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: imageIcon,
            ),
            Flexible(
              child: Container(
                margin:
                    new EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$name",
                          style: titleText(),
                        ),
                        Text(
                          "R\$ $price uni.",
                          style: subtitleText(),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            CartListController.instance.itens.remove(cod);
                            function();
                          },
                          icon:
                              Icon(Icons.remove_circle, color: Colors.red[400]),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
