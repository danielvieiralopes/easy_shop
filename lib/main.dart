
import 'package:easy_shop/models/product_manager.dart';
import 'package:easy_shop/models/user_manager.dart';
import 'package:easy_shop/screens/base/base_screen.dart';
import 'package:easy_shop/screens/login/login_screen.dart';
import 'package:easy_shop/screens/product/product_screen.dart';
import 'package:easy_shop/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/product.dart';

void main() {
  runApp(MyApp());

 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserManager(),
          lazy: false,
          ),
          
          ChangeNotifierProvider(
            create: (_) => ProductManager(),
            lazy: false,
            )
      ],
          child: MaterialApp(
        title: 'Easy Shop',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 4, 125, 141),
          scaffoldBackgroundColor: const Color.fromARGB(255, 4, 125, 141),
          appBarTheme: const AppBarTheme(elevation: 0),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/base',
        onGenerateRoute: (settings) {
          switch (settings.name) {            
             case '/login' :
             return MaterialPageRoute(
               builder: (_) => LoginScreen());
            case '/signup' :
             return MaterialPageRoute(
               builder: (_) => SignUpScreen());
            case '/product' :
             return MaterialPageRoute(
               builder: (_) => ProductScreen(
                 settings.arguments as Product 
               ));      
            case '/base':          
            default:
              return MaterialPageRoute(
                builder: (_) => BaseScreen());

          }
        },
      ),
    );
  }
}
