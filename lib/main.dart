import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_shop/screens/base/base_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

  Firestore.instance.collection('pedidos').document('#00001').setData(
    {'preco': 199.99, 'usuario': 'Daniel Vieira'}
    
    );
  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BaseScreen(),
      
    );
  }
}
