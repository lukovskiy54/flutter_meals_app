import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});
  static const routeName = '/filters';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your filters', style: TextStyle(color: Colors.white),), backgroundColor: Colors.pink,iconTheme: IconThemeData(color: Colors.white),),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Filters'),
      ),
    );
  }
}
