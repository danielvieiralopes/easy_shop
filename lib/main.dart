import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_shop/models/user_manager.dart';
import 'package:easy_shop/screens/base/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());

  Firestore.instance.collection('pedidos').document('#00001').setData(
    {'preco': 199.99, 'usuario': 'Daniel Vieira'}
    
    );
  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Provider(
      create: (_) => UserManager(),
          child: MaterialApp(
        title: 'Easy Shop',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 4, 125, 141),  
        scaffoldBackgroundColor: const Color.fromARGB(255, 4, 125, 141),
        appBarTheme: const AppBarTheme(
          elevation: 0
        ),
         visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BaseScreen(),
        
      ),
    );
  }
}
