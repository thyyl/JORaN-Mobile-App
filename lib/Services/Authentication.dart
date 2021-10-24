import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

Future<http.Response> signUpCreatePin(String email) async {
  await dotenv.load();

  final String backEndServer = dotenv.get('URL');

  final response = await http.post(
    Uri.parse('$backEndServer/pin_creator'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String> {
      'email': email,
    }),
  );

  return response;
}

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

Future<Map<String, dynamic>> userLogIn(String email, String pin) async {
  await dotenv.load();

  final String backEndServer = dotenv.get('URL');

  final response = await http.post(
    Uri.parse('$backEndServer/authenticate'),
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

  print(response.body);
  return jsonDecode(response.body);
}