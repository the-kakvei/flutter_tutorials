// Import flutter helper library
import 'dart:developer';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  void fetchImage() async {
    counter += 1;
    var url = Uri.https('jsonplaceholder.typicode.com', '/photos/$counter');
    var response = await get(url);
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    inspect(imageModel);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Images'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.update),
        ),
        body: Text('$counter button have pressed'),
      ),
    );
  }
}
