import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:rest_demo/app/infrastructure/api.dart';
import 'package:http/http.dart' as http;

import 'package:dart_ipify/dart_ipify.dart';
import 'package:rest_demo/app/infrastructure/api_key.dart';

Future<String> getIp() async {
  return await Ipify.ipv4();
}

class ApiRemoteServices {
  ApiRemoteServices({
    required this.api,
  });
  final Api api;

  Future<String> getErrorData() async {
    final response = await http.post(
      api.demoUri(),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body)['err_cod'];
      print('Aqui regreso socas>$data');
      return data;
    } else {
      //return 'Algo no jalo con el nombre';
      throw Exception(
          '${api.demoUri()} faild to load demo data ${response.statusCode} : message ${response.reasonPhrase}');
    }
  }

  Future<String> getNombreEmp({
    required String expediente,
    required String numSS,
  }) async {
    final _nss = utf8.encode(numSS);
    final _nonce = utf8.encode(DateTime.now().toString());
    final _secret = utf8.encode(ApiKey.apiSecret);
    final _hash = sha256.convert(_nss + _nonce + _secret).toString();
    final _ip = await getIp();

    final _params = {
      'emp_expediente': expediente,
      'emp_nss': numSS,
      'api_hash': _hash,
      'api_nonce': DateTime.now().toString(),
      'emp_uid': numSS,
      'emp_ip': _ip,
    };

    final response = await http.post(
      Uri.parse('https://extranet.telnor.com/ApiConexionTelnor/v1/info_empleado.jsp'),
      body: _params,
    );
    if (response.statusCode == 200) {
      final Map<String,dynamic> data = json.decode(response.body);
      if (data.isNotEmpty) {
        //final String _empleado = data.toString();
        //final Map<String,dynamic> detalle = data['emp_detalle'];
        final String nombre = data.toString();
        print('Aqui regreso socios>$nombre');
        return nombre;
      } else {
        return 'Algo no jalo con el nombre';
      }
      //print('Aqui regreso socas>$data'
    } else {
      //return 'Algo no jalo con el nombre';
      throw Exception(
          '${api.demoUri()} faild to load demo data ${response.statusCode} : message ${response.reasonPhrase}');
    }
  }
}
