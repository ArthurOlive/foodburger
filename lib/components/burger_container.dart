import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodburger/style/font_text.dart';

class Burger extends StatelessWidget {
  final String? name;
  final String? description;
  final String? price;
  final String? cod;

  const Burger({Key? key, this.name, this.price, this.description, this.cod})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.only(
        bottom: 5,
        top: 10,
        left: 15,
        right: 15,
      ),
      child: InkWell(
        onTap: () {
          print("Clicked container");
        },
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Container(
            padding: new EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 140,
                  height: 140,
                  child: Image.asset("assets/images/burger1.png"),
                ),
                Flexible(
                  child: Container(
                    margin: new EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$name",
                          style: titleText(),
                        ),
                        Text(
                          "R\$ $price",
                          style: subtitleText(),
                        ),
                        Text(
                          "$description",
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.justify,
                          style: normalText(),
                        ),
                        Text(
                          "cod: $cod",
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.justify,
                          style: normalText(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
