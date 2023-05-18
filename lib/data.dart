// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class MyApiPage extends StatefulWidget {
  @override
  _MyApiPageState createState() => _MyApiPageState();
}

class _MyApiPageState extends State<MyApiPage> {
  String _responseData = '';

  Future<void> fetchData() async {
    final dio = Dio();

    // final url = 'https://pokeapi.co/api/v2/pokemon'; // Replace with your API endpoint URL
    final url = 'http://127.0.0.1/student/index.php'; // Replace with your API endpoint URL

    try {
      final response = await dio.get(url);
      //  final response = await http.get(Uri.parse(url));
    

      if (response.statusCode == 200) {
        // Request succeeded, parse and handle the response
        final responseBody = response.data;
        // Do something with the response data
        print(responseBody);
      } else {
        // Request failed, handle the error
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      // Exception occurred, handle the error
      print('Error: $e');
    }
}

  // Future<void> fetchData() async {
  //   final response = await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon'));

  //   if (response.statusCode == 200) {
  //     // Request succeeded, parse and handle the response
  //     final responseBody = response.body;
  //     // Do something with the response data
  //     print(responseBody);
  //   } else {
  //     // Request failed, handle the error
  //     print('Request failed with status: ${response.statusCode}');
  //   }

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: fetchData,
              child: Text('Fetch Data'),
            ),
            SizedBox(height: 16.0),
            Text(_responseData),
          ],
        ),
      ),
    );
  }
}
