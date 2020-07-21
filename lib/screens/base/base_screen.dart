import 'package:easy_shop/common/custom_drawer/custom_drawer.dart';
import 'package:easy_shop/models/page_manager.dart';
import 'package:easy_shop/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class BaseScreen extends StatelessWidget {

  final PageController pageController = PageController();

  @override 
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PageManager(pageController),
      child: PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
       LoginScreen(),
         Scaffold(
          drawer: CustomDrawer(),         
          appBar: AppBar(
            title: const Text('Home2'),
          ),
        ), Scaffold(
          drawer: CustomDrawer(),         
          appBar: AppBar(
            title: const Text('Home3'),
          ),
        ), Scaffold(
          drawer: CustomDrawer(),         
          appBar: AppBar(
            title: const Text('Home4'),
          ),
        ),
        
      ],
    ));
  }
}
