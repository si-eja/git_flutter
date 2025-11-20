import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginService {
  final String baseUrl = "https://learncode.biz.id/api/login";

  Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"email": email, "password": password}),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body); // token + data user
    } else {
      throw Exception(jsonDecode(response.body)["msg"] ?? "Login gagal");
    }
  }
}
