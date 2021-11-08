import 'dart:convert';

import 'package:rest_demo/app/infrastructure/api.dart';
import 'package:http/http.dart' as http;

import 'package:dart_ipify/dart_ipify.dart';

Future<String> getIp() async {
  return await Ipify.ipv4();
}

class ApiRemoteServices {
  ApiRemoteServices({
    required this.api,
  });
  final Api api;
 
  Future<String> getDemoData() async {
    final response = await http.post(
      api.demoUri(),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final data= json.decode(response.body)['err_cod'];
      print('Aqui regreso socas>$data');
      return data;
    } else {
      throw Exception('${api.demoUri()} faild to load demo data ${response.statusCode} : message ${response.reasonPhrase}');
    }
  }
}
