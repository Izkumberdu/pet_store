import 'package:flutter/material.dart';
import 'package:pet_store/models/cats.dart';

class CartProvider extends ChangeNotifier {
  final List<Cats> _items = [];

  List<Cats> get items => _items;

  void add(Cats item) {
    _items.add(item);
    item.isInCart = true;
    notifyListeners();
  }

  void remove(Cats item) {
    _items.remove(item);
    item.isInCart = false;
    notifyListeners();
  }

  void removeAll() {
    for (var item in _items) {
      item.isInCart = false;
    }
    _items.clear();
    notifyListeners();
  }

  double getCartTotal() {
    return _items.fold(0, (previousValue, item) => previousValue + item.price);
  }
}
