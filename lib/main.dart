// I ned to import helper library from flutter
// to get content omn the screen
import 'package:flutter/material.dart';

// Define a 'main' function to run when our app starts

void main() {
// Create a new text widget to show some text on the screen

var app = MaterialApp(
  home: Text('Hi there!')
  );
// Take that widget an get it on the screen
runApp(app);
}
