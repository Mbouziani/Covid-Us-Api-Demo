// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:coviddemo/Covidmodel.dart';

import 'package:http/http.dart' as http;

Future<List<Covidmodel>> fetchdata() async {
  final url = Uri.parse('https://api.covidtracking.com/v1/us/daily.json');
  http.Response response = await http.get(url);
  var bodydata = jsonDecode(response.body);
  List<Covidmodel> Coviddata = [];

  if (response.statusCode == 200) {
    for (var c in bodydata) {
      Coviddata.add(Covidmodel.fromJson(c));
    }

    return Coviddata;
  } else {
    print(response.statusCode);
    return Coviddata;
  }
}
