import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodburger/style/font_text.dart';

class Burger extends StatelessWidget {
  final Image? imageIcon;
  final String? name;
  final String? description;
  final String? price;
  final String? cod;

  const Burger(
      {Key? key,
      this.name,
      this.price,
      this.description,
      this.cod,
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
      child: InkWell(
        onTap: () {
          print("Clicked container $cod");
        },
        borderRadius: BorderRadius.circular(5),
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 140,
                  height: 140,
                  child: imageIcon,
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
