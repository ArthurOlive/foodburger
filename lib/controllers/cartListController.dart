import 'dart:collection';

import 'package:flutter/cupertino.dart';

class CartListController extends ChangeNotifier {
  static CartListController instance = CartListController();

  HashMap<int, int> itens = new HashMap();
}
