import 'package:rest_demo/app/infrastructure/api_key.dart';

class Api {
  final String secret;
  Api({
    required this.secret,
  });

  factory Api.sandbox() => Api(secret: ApiKey.apiSecret);
  
  static const String host = 'extranet.telnor.com';
  static const String basePath = '/ApiConexionTelnor/v1/info_empleado.jsp';

  Uri demoUri()=> Uri(
    scheme: 'https',
    host: host,
    path: basePath,
  );
  


}
