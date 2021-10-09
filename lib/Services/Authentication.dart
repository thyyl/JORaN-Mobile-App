import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

Future<void> signUpCreatePin() async {
  await dotenv.load();

  final String backEndServer = dotenv.get('URL');

  final response = await http.post(
    Uri.parse('https://joran.usm.my/pin_creator'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String> {
      'email': "cheahcx10@student.usm.my",
    }),
  );

  if (response.statusCode == 201) {
    print(response.body);
  } else {
    print("not ok");
  }
}