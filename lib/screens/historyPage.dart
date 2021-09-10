import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodburger/components/bottomMenu.dart';
import 'package:foodburger/components/titleBar.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleBar(),
        backgroundColor: Color.fromRGBO(31, 31, 31, 1),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Icon(
                    Icons.notifications_off_sharp,
                    size: 50,
                  ),
                  Text("Sem histórico"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigatorMenu(
        option: 1,
      ),
    );
  }
}
