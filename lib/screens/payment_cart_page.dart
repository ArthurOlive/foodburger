import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodburger/components/bottom_menu.dart';

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
      body: Container(),
      bottomNavigationBar: BottomNavigatorMenu(
        option: 2,
      ),
    );
  }
}
