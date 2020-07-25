import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_shop/models/product.dart';
import 'package:flutter/cupertino.dart';

class ProductManager extends ChangeNotifier {
  ProductManager() {
    loadAllProducts();
  }

  final Firestore firestore = Firestore.instance;

  List<Product> allProducts = [];

  Future<void> loadAllProducts() async {
    final QuerySnapshot snapProducts =
        await firestore.collection('products').getDocuments();

    allProducts =
        snapProducts.documents.map((d) => Product.fromDocument(d)).toList();

    notifyListeners();
  }
}
