// Import flutter helper library
import 'dart:developer';

import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Images'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Icon(Icons.update),
        ),
        body: Text('$counter button have pressed'),
      ),
    );
  }
}
