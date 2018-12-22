// Import flutter helper library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'widgets/image_list.dart';
import 'dart:convert';

class App extends StatefulWidget {
    createState() {
      // TODO: implement createState
      return AppState();
    }
}

// Create a calss that will build our custom widget
// This class must extend the 'StatlessWidget' base class
class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage () async {
    counter++;
    final response = await get('http://jsonplaceholder.typicode.com/photos/${counter}');
    final imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
          images.add(imageModel);
        });
  }

// Must define a 'build' method that returns
// the widgets that *this* widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          child:Icon(Icons.add),
          onPressed: fetchImage,),
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
      )
      );
  }
}
