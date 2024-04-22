import 'dart:convert';

import 'package:shopping/models/category.dart';

class GroceryItem {
  final String id;
  final String name;
  final int quantity;
  final Category category;

  const GroceryItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.category,
  });

  @override
  String toString() {
    return '$name : $quantity : ${category.name}';
  }

  toJson() {
    return json.encode({
      'name': name,
      'quantity': quantity,
      'category': category.name,
    });
  }
}
