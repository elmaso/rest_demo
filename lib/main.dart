import 'dart:convert';
import 'package:intl/intl.dart';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:rest_demo/app/infrastructure/api.dart';
import 'package:rest_demo/app/infrastructure/api_key.dart';
import 'package:rest_demo/app/infrastructure/api_remote_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _apiResponse = '';
  String _datosEmp = '';

  //Para ver las variables que vamos a mandar a la api
  final _expediente = ApiKey.testExp;
  final _nss = ApiKey.testNss;
  final _nonce = DateFormat('yyyyMMdd-hhmmss').format(DateTime.now());
  final _secret = (ApiKey.apiSecret).toString();
  String _hash = '';

  void _demoRestData() async {
    final apiServices = ApiRemoteServices(api: Api.sandbox());
    final apiResponse = await apiServices.getNombreEmp( 
      expediente: _expediente,
       numSS: _nss,);
    

    setState(() {
      print('le di click');
      _apiResponse = apiResponse;
      var _s = utf8.encode(_nss + _nonce + _secret);
      var _y = (_nss + _nonce + _secret);
      _hash = sha256.convert(_s).toString();
      print('valores:$_y = hash:$_hash');
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              _apiResponse,
              style: Theme.of(context).textTheme.caption,
            ),
            const SizedBox(height: 20),
            Text('''variables: 
             exp: $_expediente,
             nss:$_nss,
             nonce: $_nonce,
             secret: $_secret,
             hash: $_hash
             '''),
            const SizedBox(height: 20),
            Text('nombreEmp:  $_datosEmp'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _demoRestData,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
