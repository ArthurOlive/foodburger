import 'package:foodburger/models/itemType.dart';

class Item {
  int _cod;
  String _name;
  String _description;
  String _price;
  ItemType _type;
  String _imageUrl;

  Item(
    this._cod,
    this._name,
    this._description,
    this._price,
    this._imageUrl,
    this._type,
  );

  String get price => _price;

  ItemType get type => _type;

  String get imageUrl => _imageUrl;

  set imageUrl(String imageUrl) {
    _imageUrl = imageUrl;
  }

  set type(ItemType type) {
    _type = type;
  }

  set price(String price) {
    _price = price;
  }

  int get cod => _cod;

  set cod(int cod) {
    _cod = cod;
  }

  String get name => _name;

  set name(String name) {
    _name = name;
  }

  String get description => _description;

  set description(String description) {
    _description = description;
  }
}
