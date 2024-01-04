// ignore_for_file: empty_constructor_bodies, invalid_required_named_param

import 'package:flutter/material.dart';

class Category {
  final String? id;
  final String? title;
  final Color color;
  const Category(
      {@required this.id,
      @required this.title,
      @required this.color = Colors.orange});
}
