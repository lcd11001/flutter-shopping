import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:shopping/models/grocery_item.dart';

class API {
  static const String kBaseUrl =
      "https://flutter-test-6364b-default-rtdb.asia-southeast1.firebasedatabase.app";

  static Future<bool> addGroceryItem(GroceryItem item) async {
    final response = await http.post(
      Uri.parse("$kBaseUrl/shopping-list.json"),
      headers: {
        'Content-Type': 'application/json',
      },
      body: item.toJson(),
    );

    debugPrint("Response: ${response.body}");

    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }
}