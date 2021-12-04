import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> getUserID(String jwt) async {

  final String backEndServer = dotenv.get('URL');

  http.Response response = await http.get(
    Uri.parse('$backEndServer/api/whoami'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': "Bearer $jwt",
    },
  );

  return jsonDecode(response.body);
}

Future<Map<String, dynamic>> getUserInfo(String jwt, String userID) async {
  await dotenv.load();

  final String backEndServer = dotenv.get('URL');

  http.Response response = await http.get(
    Uri.parse('$backEndServer/api/user/$userID'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': "Bearer $jwt",
    },
  );

  Map<String, dynamic> userInfo = jsonDecode(response.body)["data"];

  return userInfo;
}

Future<http.Response> uploadUserResume(String jwt, String userID, File file) async {
  await dotenv.load();

  final String backEndServer = dotenv.get('URL');

  var map = new Map<String, dynamic>();
  map['userID'] = 'userID';
  map['file_url'] = file;

  http.Response response = await http.post(
    Uri.parse('$backEndServer/api/resume'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': "Bearer $jwt",
    },
  );

  return response;
}


