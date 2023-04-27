//import 'package:ekreative/ekreative.dart' as ekreative;

import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // This example uses the Google Books API to search
  // for books about HTTP. For details, see
  // https://developers.google.com/books/docs/overview
  //var uri = Uri.https('example.org', '/path', {'q': 'dart'});
  final url = Uri.https('api.genderize.io','/',{'name':'lena'});
  // final url = Uri.https(
  //   'www.googleapis.com',
  //   '/books/v1/volumes',
  //   {'q': '{http}'},
  // );

  // Await the HTTP GET response, then decode the
  // JSON data it contains.
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final jsonResponse = convert.jsonDecode(response.body);
    print(jsonResponse);
    // final itemCount = jsonResponse['totalItems'];
    // print('Number of books about HTTP: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}


//
// void main(List<String> arguments) {
//   print('Hello world: ${ekreative.calculate()}!');
//
//}
