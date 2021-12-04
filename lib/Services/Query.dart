import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

Future<void> queryLatestJobListing() async {
  await dotenv.load();

  final String backEndServer = dotenv.get('URL');

  final response = await http.get(
    Uri.parse('$backEndServer/dummy'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  print(response.statusCode);
}