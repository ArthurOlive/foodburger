import 'package:flutter/material.dart';

class AppBarMenu extends StatelessWidget {
  final TabBar? tabBar;
  const AppBarMenu({Key? key, this.tabBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      bottom: tabBar,
    );
  }
}
