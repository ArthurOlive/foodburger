import 'package:flutter/material.dart';
import 'package:foodburger/components/titleBar.dart';
import 'package:foodburger/controllers/cartListController.dart';
import 'package:foodburger/models/Item.dart';
import 'package:foodburger/style/fontText.dart';

class Confirm extends StatelessWidget {
  final Item item;
  const Confirm({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleBar(),
        backgroundColor: Color.fromRGBO(31, 31, 31, 1),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                width: double.infinity,
                height: 140,
                clipBehavior: Clip.hardEdge,
                child: FittedBox(
                    child: Image.asset(item.imageUrl), fit: BoxFit.cover),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                ),
              ),
            ]),
            Container(
              height: 300,
              padding:
                  new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:
                        new EdgeInsets.symmetric(horizontal: 0, vertical: 5.0),
                    child: Text(
                      item.name,
                      style: titleText(),
                    ),
                  ),
                  Container(
                    margin:
                        new EdgeInsets.symmetric(horizontal: 0, vertical: 5.0),
                    child: Text(
                      "R\$ " + item.price,
                      style: subtitleText(),
                    ),
                  ),
                  Text(
                    item.description,
                    style: normalText(),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (CartListController.instance.itens.containsKey(item)) {
                    CartListController.instance.itens[item.cod] =
                        CartListController.instance.itens[item.cod]! + 1;
                  } else {
                    CartListController.instance.itens[item.cod] = 1;
                  }

                  print(CartListController.instance.itens);

                  Navigator.of(context).pushReplacementNamed('/');
                },
                child: const Text('Comprar'),
                style: ButtonStyle(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
