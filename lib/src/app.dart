// Import flutter helper library
import 'package:flutter/material.dart';

// Create custom widget class. This class must exten StatelessWidget
class App extends StatelessWidget {
// Must define a build method that return the widgets that this will show
  Widget build(BuildContext context) {
    return MaterialApp(
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
  }
}
