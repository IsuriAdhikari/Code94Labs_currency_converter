import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String _apiKey = 'a3c06e312c50b966566a03e2';

  final String _baseUrl = 'https://v6.exchangerate-api.com/v6';

  Future<Map<String, dynamic>> getRates(String baseCurrency) async {
    final url = '$_baseUrl/$_apiKey/latest/$baseCurrency';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load exchange rates');
    }
  }
}
