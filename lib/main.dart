// 1. Import a helper library to get content on screen
import 'package:flutter/material.dart';

// 2. Define a main function to run when our app start
void main() {
// 3. Inside that main function, create a new text widget to show text
  var app = MaterialApp(
    // MaterialApp is a core widget
    // home is a named parameter, the first thing to show up
    home: Text('Hi There!'),
  );

// 4. Take that widget and put it on the screen
  runApp(app);
}
