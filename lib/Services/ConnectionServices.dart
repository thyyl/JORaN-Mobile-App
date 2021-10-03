import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

Future<String> checkConnection() async {
  await dotenv.load();

  final String backEndServer = dotenv.get('URL');
  final response = await http.post(Uri.https(backEndServer, '/pin_creator'));

  if (response.statusCode == 201) {
    return "OK!";
  } else {
    print('Unable to fetch products from the REST API');
    throw Exception('Unable to fetch products from the REST API');
  }
}