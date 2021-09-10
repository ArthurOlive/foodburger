import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/icon_hamburger.png'),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Text("FoodBurger"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.circle,
                color: Colors.green,
                size: 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                child: Text(
                  "Aberto agora",
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
