import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

// Future<http.Response> signUpCreatePin(String email) async {
//   await dotenv.load();
//
//   final String backEndServer = dotenv.get('URL');
//   final uri = 'http://199.247.18.24:7001/oauth/token';
//
//   var map = new Map<String, dynamic>();
//   map['grant_type'] = 'password';
//   map['client_id'] = '2';
//   map['client_secret'] = 'vgQju3uoZD3Geq7jEpjUTSY0SlPmRr6HaYJ0hAFO';
//   map['username'] = 'r@b.com';
//   map['password'] = 'secret';
//
//   http.Response response = await http.post(
//     Uri.parse(uri),
//     body: map,
//   );
//
//   print(response.body);
//   return response;
// }

Future<Map<String, dynamic>> tacVerification(String email, String pin) async {
  await dotenv.load();

  final String backEndServer = dotenv.get('URL');

  final response = await http.post(
    Uri.parse('$backEndServer/pin_verifier'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String> {
      'email': email,
      'pin': pin,
    }),
  );

  return jsonDecode(response.body);
}

Future<http.Response> userLogIn(String email, String password) async {
  await dotenv.load();

  final String backEndServer = dotenv.get('URL');
  final String clientSecret = dotenv.get('CLIENT_SECRET');
  final String clientID = dotenv.get('CLIENT_ID');

  var map = new Map<String, dynamic>();
  map['grant_type'] = 'password';
  map['client_id'] = clientID;
  map['client_secret'] = clientSecret;
  map['username'] = email;
  map['password'] = password;

  http.Response response = await http.post(
    Uri.parse('$backEndServer/oauth/token'),
    body: map,
  );

  return response;
}

Future<Map<String, dynamic>> userUpdatePassword(String jwt, String oldPassword, String newPassword) async {
  await dotenv.load();

  final String backEndServer = dotenv.get('URL');

  final response = await http.post(
    Uri.parse('$backEndServer/password_update'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': "Bearer $jwt",
    },
    body: jsonEncode(<String, String> {
      'current_password': oldPassword,
      'new_password': newPassword,
    }),
  );

  return jsonDecode(response.body);
}