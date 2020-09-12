import 'package:flutter/material.dart';
import 'package:flutterCozinhar/screens/categories_screen.dart';
import 'package:flutterCozinhar/screens/favorite_meals_screen.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0, // default aba
      child: Scaffold(
        appBar: AppBar(
          title: Text('Vamos Cozinhar?'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.category),
              text: 'Categorias',
            ),
            Tab(
              icon: Icon(Icons.star),
              text: 'Favoritos',
            ),
          ]),
        ),
        body: TabBarView(children: [
          CategoriesScreen(),
          FavoriteMealsScreen(),
        ]),
      ),
    );
  }
}