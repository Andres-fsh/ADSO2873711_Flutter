import 'dart:convert';
import 'package:http/http.dart' as http;

const String baseUrl = "https://reqres.in/api";

Future obtenerUsuarios() async {
  final response = await http.get(Uri.parse('$baseUrl/users?page=1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    // print(jsonDecode(response.body));
    return jsonDecode(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Problemas al obtener los usuarios');
  }
}