// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/favorites_screen.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title':'Categories'},
    {'page': FavoritesScreen(), 'title':'Your Favorites'},
    
  ];
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text(_pages[_selectedPageIndex]['title'] as String, style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.pink,
            iconTheme: IconThemeData(color: Colors.white),
          ),
          drawer: MainDrawer(),
          body: _pages[_selectedPageIndex]['page'] as Widget,
          bottomNavigationBar: BottomNavigationBar(
            onTap: _selectPage,
            backgroundColor: Colors.pink,
            unselectedItemColor: Colors.white,
            selectedItemColor: Theme.of(context).colorScheme.secondary,

            currentIndex: _selectedPageIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.pink,
                icon: Icon(Icons.category),
                label: 'Categories',
                ),
              BottomNavigationBarItem(
                backgroundColor: Colors.pink,
                icon: Icon(Icons.star),
                label: 'Favorites',
                ),
            ]),
        );
  }
}
