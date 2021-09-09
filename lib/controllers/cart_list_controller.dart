import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:foodburger/models/Item.dart';

class CartListController extends ChangeNotifier {
  static CartListController instance = CartListController();

  HashMap<int, int> itens = new HashMap();
}
