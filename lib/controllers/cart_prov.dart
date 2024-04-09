import 'package:flutter/material.dart';

import '../models/x_models.dart';

class CartProvider extends ChangeNotifier{
  final List<ProductModel> _products = [];

  List<ProductModel> get products => _products;

  void add(ProductModel item){
    _products.add(item);
    notifyListeners();
  }

  void remove(ProductModel item){
    _products.remove(item);
    notifyListeners();
  }

  void removeAll(){
    _products.clear();
    notifyListeners();
  }

  double getCartTotal(){
    return _products.fold(0, (prevValue, element) => prevValue + element.price);
  }

}