// Import flutter helper library
import 'package:flutter/material.dart';

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
// Must define a 'build' method that returns
// the widgets that *this* widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          child:Icon(Icons.add),
          onPressed: () {
         setState(() {
                    counter += 1;
                  });
        },),
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
      )
      );
  }
}
