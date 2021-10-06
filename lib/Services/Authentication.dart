import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

Future<http.Response> signUpCreatePin() async {
  await dotenv.load();

  final String backEndServer = dotenv.get('URL');

  return http.post(
    Uri.parse('https://joran.usm.my./pin_creator'),
      body: jsonEncode(<String, String> {
        'email': "cheahcx10@student.usm.my"
      }),
  );
}