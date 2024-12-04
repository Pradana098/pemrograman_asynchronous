import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:pemrograman_asynchronous/geolocation.dart';
import 'package:pemrograman_asynchronous/navigation_dialog.dart';
// import 'package:async/async.dart';
// import 'package:pemrograman_asynchronous/geolocation.dart';
import 'package:pemrograman_asynchronous/navigation_first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NavigationDialogScreen(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({
    super.key,
  });

  // final String title;

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  Future<http.Response> getData() async {
    const authority = 'www.googleapis.com';
    const Path = '/books/v1/volumes/B1mxDwAAQBAJ';
    Uri url = Uri.https(authority, Path);
    return http.get(url);
  }

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future Count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  late Completer completer;

  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  calculate() async {
    try {
      await Future.delayed(const Duration(seconds: 5));
      completer.complete(42);
    } catch (_) {
      completer.completeError({});
    }
  }

  void returnFG() {
    Future.wait<int>([
      returnOneAsync(),
      returnTwoAsync(),
      returnThreeAsync(),
    ]).then((List<int> value) {
      int total = 0;
      for (var element in value) {
        total += element;
      }
      setState(() {
        result = total.toString();
      });
    });
  }

  Future returnError() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception('Something terrible happened!');
  }

  Future handleError() async{
    try{
      await returnError();
    }
    catch(error){
      setState(() {
        result = error.toString();
      });
    }
    finally{
      print('Complete');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future'),
      ),
      body: Center(
        child: Column(children: [
          const Spacer(),
          ElevatedButton(
            child: const Text('GO!'),
            onPressed: () {
              handleError().then((value){
                setState(() {
                  result = 'Succes';
                });
              }).catchError((onError){
                setState(() {
                  result = onError.toString();
                });
              }).whenComplete(() => print('Complete'));
              // returnError().then((value){
              //   setState(() {
              //     result = 'Succes';
              //   });
              // }).catchError((onError){
              //   setState(() {
              //     result = onError.toString();
              //   });
              // }).whenComplete(() => print('Complete'));
              // returnFG();
              // getNumber().then((value){
              //   setState(() {
              //     result = value.toString();
              //   });
              // }).catchError((e){
              //   result = 'An error occurred';
              // });
              // returnError().then((value) {
              //   setState(() {
              //     result = 'Success';
              //   });
              // }).catchError((onError) {
              //   setState(() {
              //     result = onError.toString();
              //   });
              // }).whenComplete(() => print('Complete'));
            },
          ),
          const Spacer(),
          Text(result),
          const Spacer(),
          const CircularProgressIndicator(),
          const Spacer(),
        ]),
      ),
    );
  }
}
