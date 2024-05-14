import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:interview/pages/model/model.dart';

class ApiService {
  final String apiUrl;

  ApiService({required this.apiUrl});

  Future<List<Item>> fetchItems() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> itemsJson = json.decode(response.body)['Items'];
      return itemsJson.map((json) => Item.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load items');
    }
  }
}
