import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:intl/intl.dart';
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
    final _nss = numSS;
    ;
    final _nonce = DateFormat('yyyyMMdd-hhmmss').format(DateTime.now());
    final _secret = (ApiKey.apiSecret);
    final _s = utf8.encode(_nss + _nonce + _secret);
    final _hash = sha256.convert(_s).toString();
    final _ip = await getIp();
    const _empjson ='["paterno","curp","materno","fecha_ingreso","puesto","clase_contrato","sexo","exp_jefe","nombre_jefe"]';

    // final _params = {
    //   'emp_expediente': expediente,
    //   'emp_nss': numSS,
    //   'api_hash': _hash,
    //   'api_nonce': _nonce,
    //   'emp_uid': numSS,
    //   'emp_ip': _ip,
    //   "emp_json": [
    //     "paterno",
    //     "curp",
    //     "materno",
    //     "fecha_ingreso",
    //     "puesto",
    //     "clase_contrato",
    //     "sexo",
    //     "exp_jefe",
    //     "nombre_jefe"
    //   ]
    // };

    final response = await http.post(
      api.demoUri(),
      body: {
        'emp_expediente': expediente,
        'emp_nss': numSS,
        'api_hash': _hash,
        'api_nonce': _nonce,
        'emp_uid': numSS,
        'emp_ip': _ip,
        'emp_json': _empjson
      },
    );
    print("mande estos_nonce:$_nonce _hash $_hash");
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
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
