import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> updateName(String jwt, String name) async {
  await dotenv.load();

  final String backEndServer = dotenv.get('URL');

  final response = await http.post(
    Uri.parse('$backEndServer/change_username'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': "Bearer $jwt",
    },
    body: jsonEncode(<String, String> {
      'username': name,
    }),
  );

  print(response.statusCode);
  return jsonDecode(response.body);
}

Future<Map<String, dynamic>> updateProfilePicture(String jwt, File? file) async {
  await dotenv.load();

  final String backEndServer = dotenv.get('URL');

  final response = await http.post(
    Uri.parse('$backEndServer/update_my_pic'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': "Bearer $jwt",
    },
    body: jsonEncode(<String, File> {
      'file': file!,
    }),
  );

  print(response.statusCode);
  return jsonDecode(response.body);
}