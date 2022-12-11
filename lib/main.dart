import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Basic Images'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hello there');
        },
        child: Icon(Icons.update),
      ),
    ),
  );

  runApp(app);
}
