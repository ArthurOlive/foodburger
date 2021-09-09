import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodburger/components/bottom_menu.dart';
import 'package:foodburger/components/title_bar.dart';

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
      body: Container(),
      bottomNavigationBar: BottomNavigatorMenu(
        option: 1,
      ),
    );
  }
}
